//
//  BookProtocols.swift
//  FeistBooks
//
//  Created by Vinh Tran on 23/10/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import Foundation
import UIKit

protocol Manager {
    
    var books:[Book] {get}
    func addBook(_ title:String, _ author:String, _ image:UIImage)
}
