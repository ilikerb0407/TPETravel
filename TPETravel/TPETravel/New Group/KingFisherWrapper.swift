//
//  KingFisherWrapper.swift
//  TPETravel
//
//  Created by Kai Fu Jhuang on 2024/8/10.
//

// For 圖片用
import Foundation
import Kingfisher

extension UIImageView {
    func loadImage(_ urlString: String?, placeHolder: UIImage? = nil) {
        guard let urlString = urlString, let url = URL(string: urlString) else { return }
        
        self.kf.setImage(with: url, placeholder: placeHolder)
    }
}
