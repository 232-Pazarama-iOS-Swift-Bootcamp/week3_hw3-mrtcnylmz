//
//  BookResponse.swift
//  iTunes Client App
//
//  Created by Mertcan Yılmaz on 9.10.2022.
//

import Foundation

struct BookResponse: Decodable {
    let resultCount: Int?
    let results: [Book]?
}
