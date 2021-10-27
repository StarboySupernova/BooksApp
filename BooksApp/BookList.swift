//
//  BookListView.swift
//  BooksApp
//
//  Created by Simbarashe Dombodzvuku on 10/25/21.
//

import SwiftUI

struct BookList: View {
    
    /*
     This is fake data for demonstration purposes
     let books: [Book] = [
        Book(id: 1, title: "1984", author: "George Orwell"),
        Book(id: 2, title: "Animal Farm", author: "George Orwell"),
        Book(id: 3, title: "Brave New World", author: "Aldous Huxley")
    ] */
    
    @ObservedObject var viewModel: BookViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.books) { book in
                let index = viewModel.books.firstIndex(where: {$0.id == book.id})!
                NavigationLink(destination: BookEdit(book: $viewModel.books[index])){
                    BookRow(book:book)
                }
            }
            .navigationBarTitle(NSLocalizedString("Books", comment: "Header Name"))
        }
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
