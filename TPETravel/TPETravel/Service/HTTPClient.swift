//
//  HTTPClient.swift
//  TPETravel
//
//  Created by Kai Fu Jhuang on 2024/10/3.
//

import Combine
import Foundation

enum Result<T> {

    case success(T)

    case failure(Error)
}

enum STHTTPClientError: Error {

    case decodeDataFail

    case clientError(Data)

    case serverError

    case unexpectedError
}

enum STHTTPMethod: String {

    case GET

    case POST
}

enum STHTTPHeaderField: String {

    case contentType = "Content-Type"

    case auth = "Authorization"
}

enum STHTTPHeaderValue: String {

    case json = "application/json"
}


protocol STRequest {

    var headers: [String: String] { get }

    var body: Data? { get }

    var method: String { get }

    var endPoint: String { get }
}
// test revert
// 123123
extension STRequest {
    
    func makeRequest() -> URLRequest {

        let urlString = Bundle.STValueForString(key: STConstant.urlKey) + endPoint

        let url = URL(string: urlString)!

        var request = URLRequest(url: url)

        request.allHTTPHeaderFields = headers
        
        request.httpBody = body

        request.httpMethod = method

        return request
    }
}

class HTTPClient {

    static let shared = HTTPClient()

    private let decoder = JSONDecoder()
    private let encoder = JSONEncoder()
    private var cancellables = Set<AnyCancellable>()

    private init() { }

    func request(_ stRequest: STRequest) -> AnyPublisher<Data, Error> {
        URLSession.shared.dataTaskPublisher(for: stRequest.makeRequest())
            .tryMap { (data, response) -> Data in
                // swiftlint:disable force_cast
                let httpResponse = response as! HTTPURLResponse
                // swiftlint:enable force_cast
                let statusCode = httpResponse.statusCode

                switch statusCode {
                case 200..<300:
                    return data

                case 400..<500:
                    throw STHTTPClientError.clientError(data)

                case 500..<600:
                    throw STHTTPClientError.serverError

                default:
                    throw STHTTPClientError.unexpectedError
                }
            }
            .eraseToAnyPublisher() // Erases the type to AnyPublisher
    }
}

