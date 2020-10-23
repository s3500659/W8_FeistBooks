//
//  AddBookViewModel.swift
//  FeistBooks
//
//  Created by Vinh Tran on 23/10/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import Foundation
import UIKit

class AddBookViewModel: AddViewModel {
    
    let bookManager: Manager
    
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
    
    func addBook(_ title:String, _ author:String, _ cover:String) {
        guard let coverImage = UIImage(named: cover) else {return}
        bookManager.addBook(title, author, coverImage)
    }
    
    init(model: Manager) {
        bookManager = model
    }
}
