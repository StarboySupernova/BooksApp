//
//  BookRow.swift
//  BooksApp
//
//  Created by Simbarashe DOmbodzvuku on 10/25/21.
//

import SwiftUI

struct BookRow: View {
    
    var book: Book
    
    var body: some View {
        VStack (alignment: .leading, spacing: 5) {
            Text(book.title)
                .font(.headline)
                .padding([.leading, .trailing], 5)
            Text(book.author)
                .font(.subheadline)
                .padding([.leading, .trailing], 5)
        }
        .padding([.leading, .trailing], 5)
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
