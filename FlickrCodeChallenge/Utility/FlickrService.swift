//
//  FlickrService.swift
//  FlickrCodeChallenge
//
//  Created by Ganesh on 17/07/23.
//

import Foundation

final class FlickrService {

    // MARK:- Private Helpers

    private static func buildUrl(searchQuery: String) throws -> URL {
        var comps = URLComponents(
            string: "https://api.flickr.com/services/rest"
        )
        comps?.queryItems = [
            URLQueryItem(name: "text", value: searchQuery),
            URLQueryItem(name: "method", value: FlickrConstants.method),
            URLQueryItem(name: "api_key", value: FlickrConstants.apiKey),
            URLQueryItem(name: "format", value: "json"),
            URLQueryItem(name: "safe_search", value: "1"),
            URLQueryItem(name: "extras", value: FlickrConstants.extras),
            URLQueryItem(name: "nojsoncallback", value: "1"),
        ]

        guard let url = comps?.url else { throw NSError(domain: "Flickr", code: 1, userInfo: nil) }

        return url
    }

}

