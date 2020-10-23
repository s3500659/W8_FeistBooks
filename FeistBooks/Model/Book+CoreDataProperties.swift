//
//  Book+CoreDataProperties.swift
//  FeistBooks
//
//  Created by Vinh Tran on 22/10/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//
//

import Foundation
import CoreData


extension Book {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Book> {
        return NSFetchRequest<Book>(entityName: "Book")
    }

    @NSManaged public var title: String?
    @NSManaged public var cover: NSData?
    @NSManaged public var author: Author?

}
