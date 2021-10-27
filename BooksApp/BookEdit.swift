//
//  BookEdit.swift
//  BooksApp
//
//  Created by Simbarashe Dombodzvuku on 10/25/21.
//

import SwiftUI

struct BookEdit: View {
    
    @Binding var book: Book
    
    var body: some View {
        Form {
            Section(header: Text(NSLocalizedString("About this book", comment: "Details of the book"))){
                TextField(NSLocalizedString("Title", comment: "Book title"), text: $book.title)
                TextField(NSLocalizedString("Author", comment: "Writer of the book"), text: $book.author)
            }
        }
    }
}

struct BookEdit_Previews: PreviewProvider {
    static var previews: some View {
        BookEdit(book: .constant(Book(id: 1, title: "1984", author: "George Orwell")))
    }
}
