//
//  AddBookViewModel.swift
//  FeistBooks
//
//  Created by Vinh Tran on 23/10/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import Foundation
import UIKit

struct AddBookViewModel {
    
    private let bookManager = BookManager.shared
    
    // computed property
    var bookTitles:String {
        var result:String = ""
        let books = bookManager.books
        for (_, book) in books.enumerated() {
            if let title = book.title {
                result += title + "\n"
            }
        }
        return result
    }
    
    mutating func addBook(_ title:String, _ author:String, _ cover:String) {
        
        guard let coverImage = UIImage(named: cover) else {return}
        
        bookManager.addBook(title, author, coverImage)
    }
}
