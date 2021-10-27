//
//  BooksAppApp.swift
//  BooksApp
//
//  Created by user207077 on 10/25/21.
//

import SwiftUI

@main
struct BooksAppApp: App {
    
    let booksViewModel = BookViewModel()
    
    var body: some Scene {
        WindowGroup {
            BookList(viewModel: booksViewModel)
        }
    }
}
