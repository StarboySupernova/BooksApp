//
//  Book.swift
//  BooksApp
//
//  Created by Simbarashe Dombodzvuku on 10/25/21.
//

import Foundation

struct Book: Identifiable, Codable {
    var id: Int
    var title: String
    var author: String
}

