//
//  ImageDataService.swift
//  VIPER-SimpsonQuotes
//
//  Created by MuhammadQodir on 15/12/20.

import UIKit

class ImageDataService {
    
    static let shared = { ImageDataService() }()
    
    func convertToUIImage(from data: Data) -> UIImage {
        return UIImage(data: data)!
    }
}
