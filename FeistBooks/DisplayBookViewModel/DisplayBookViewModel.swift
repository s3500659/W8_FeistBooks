//
//  DisplayBookViewModel.swift
//  FeistBooks
//
//  Created by Vinh Tran on 23/10/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import Foundation
import UIKit

class DisplayBookViewModel {
    
    private var bookManager: Manager?
    
    private var bookImage: [UIImage] {
        guard let books = bookManager?.books else {return []}
        var temp:[UIImage] = []
        
        for (_, book) in books.enumerated() {
            let image = UIImage(data: book.cover! as Data)
            temp.append(image!)
        }
        return temp
    }
    
    private var index:Int = 1
    func getNextImage() -> UIImage? {
        var image = UIImage(named: "pokemon1")
        if bookImage.count != 0 {
            if bookImage.count == 1 || index == bookImage.count - 1 {
                index = 0
            } else {
                index += 1
            }
            image = bookImage[index]
        }
        return image
    }
    
    init(model: Manager) {
        bookManager = model
    }
    
    
}
