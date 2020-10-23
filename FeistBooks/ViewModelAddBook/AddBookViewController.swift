//
//  ViewController.swift
//  FeistBooks
//
//  Created by Vinh Tran on 22/10/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import UIKit

class AddBookViewController: UIViewController {
    
    @IBOutlet weak var bookTitle: UITextField!
    
    @IBOutlet weak var bookAuthor: UITextField!
    
    @IBOutlet weak var bookCover: UITextField!
    
    @IBOutlet weak var bookList: UITextView!
    
    private var viewModel = AddBookViewModel()
    
    @IBAction func addBook(_ sender: Any) {
        guard let title = bookTitle.text, let author = bookAuthor.text, let cover = bookCover.text else {return}
        
        viewModel.addBook(title, author, cover)
        
        bookList.text = viewModel.bookTitles
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bookList.text = viewModel.bookTitles
    }


}

