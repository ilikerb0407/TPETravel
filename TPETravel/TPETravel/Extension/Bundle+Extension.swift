//
//  Bundle+Extension.swift
//  TPETravel
//
//  Created by Kai Fu Jhuang on 2024/10/3.
//

import Foundation

extension Bundle {
    // swiftlint:disable force_cast
    static func STValueForString(key: String) -> String {
        
        return Bundle.main.infoDictionary![key] as! String
    }

    static func STValueForInt32(key: String) -> Int32 {

        return Bundle.main.infoDictionary![key] as! Int32
    }
    // swiftlint:enable force_cast
}
