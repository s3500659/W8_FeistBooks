//
//  BookManager.swift
//  FeistBooks
//
//  Created by Vinh Tran on 22/10/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class BookManager: Manager {
    
    static let sharedInstance = BookManager()
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    let managedContext: NSManagedObjectContext
    
    var books:[Book] = []
    
    private init() {
        managedContext = appDelegate.persistentContainer.viewContext
        loadBooks()
    }
    
    private func createNSAuthor(_ author:String) -> Author {
        let authorEntity = NSEntityDescription.entity(forEntityName: "Author", in: managedContext)!
        
        let nsAuthor = NSManagedObject(entity: authorEntity, insertInto: managedContext) as! Author
        
        nsAuthor.setValue(author, forKey: "firstName")
        nsAuthor.setValue(author, forKey: "lastName")
        return nsAuthor
    }
    
    private func createNSBook(_ title:String, _ author:Author, cover:UIImage) -> Book {
        let bookEntity = NSEntityDescription.entity(forEntityName: "Book", in: managedContext)!
        
        let nsBook = NSManagedObject(entity: bookEntity, insertInto: managedContext) as! Book
        
        nsBook.setValue(title, forKey: "title")
        let data = cover.pngData() as NSData?
        nsBook.cover = data
        nsBook.author = author
        
        return nsBook
    }
    
    func addBook(_ title:String, _ author:String, _ image:UIImage) {
        
        let nsAuthor = createNSAuthor(author)
        let nsBook = createNSBook(title, nsAuthor, cover: image)
        books.append(nsBook)
        
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save \(error), \(error.userInfo)")
        }
    }
    
    private func loadBooks() {
        do {
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Book")
            
            let result = try managedContext.fetch(fetchRequest)
            books = result as! [Book]
        } catch let error as NSError {
            print("Could not save \(error), \(error.userInfo)")
        }
    }
    
}
