//
//  BookViewModel.swift
//  BooksApp
//
//  Created by Simbarashe Dombodzvuku on 10/25/21.
//

import Foundation

class BookViewModel: ObservableObject {
    
    let url: URL! = URL(string: "https://gist.githubusercontent.com/reinder42/6f5dffd8e9a6a78a56963ab3b1694238/raw/66a6cba5a878bb9a464188dbd1378ec4b0aa4714/books.json")
    @Published var books = [Book]()
    
    init(){
        fetchBooks()
    }
    
    func fetchBooks(){
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map{ $0.data }
            .decode(type: [Book].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .receive(on: DispatchQueue.main)
            .assign(to: &$books)
        
    }
    
}
