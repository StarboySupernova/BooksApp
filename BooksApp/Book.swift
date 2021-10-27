//
//  Book.swift
//  BooksApp
//
//  Created by user207077 on 10/25/21.
//

import Foundation

struct Book: Identifiable, Codable {
    var id: Int
    var title: String
    var author: String
}

