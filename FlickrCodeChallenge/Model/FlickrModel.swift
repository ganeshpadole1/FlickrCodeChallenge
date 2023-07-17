//
//  FlickrModel.swift
//  FlickrCodeChallenge
//
//  Created by Ganesh on 17/07/23.
//

import Foundation

// MARK: - Welcome
struct FlickrModel: Codable {
    let photos: Photos
    let stat: String
}

// MARK: - Photos
struct Photos: Codable {
    let page, pages, perpage, total: Int
    let photo: [Photo]
}

// MARK: - Photo
struct Photo: Codable {
    let title: String
    let urlT: String
    let heightT, widthT: Int

    enum CodingKeys: String, CodingKey {
        case title
        case urlT = "url_t"
        case heightT = "height_t"
        case widthT = "width_t"
    }
}
