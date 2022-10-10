//
//  SoftwareResponse.swift
//  iTunes Client App
//
//  Created by Mertcan Yılmaz on 9.10.2022.
//

import Foundation

struct SoftwareResponse: Decodable {
    let resultCount: Int?
    let results: [Software]?
}
