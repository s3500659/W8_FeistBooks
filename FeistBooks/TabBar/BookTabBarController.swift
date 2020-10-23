//
//  BookTabBarController.swift
//  FeistBooks
//
//  Created by Vinh Tran on 23/10/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import Foundation
import UIKit

class BookTabBarController: UITabBarController {
    
    private var displayBookViewModel: DisplayBookViewModel?
    
    private var addBookViewModel: AddBookViewModel?
    
    private let model: Manager = BookManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayBookViewModel = DisplayBookViewModel(model: model)
        guard let displayController = self.children[0] as? DisplayBookViewController else {return}
        
        addBookViewModel = AddBookViewModel(model: model)
        guard let addBookController = self.children[1] as? AddBookViewController else {return}
        
        displayController.viewModel = displayBookViewModel
        addBookController.viewModel = addBookViewModel
        
    }
}
