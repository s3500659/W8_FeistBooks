//
//  DisplayBookViewController.swift
//  FeistBooks
//
//  Created by Vinh Tran on 23/10/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import UIKit

class DisplayBookViewController: UIViewController {
    
    private var viewModel = DisplayBookViewModel()
    
    @IBOutlet weak var bookImage: UIImageView!
    
    @IBAction func nextImage(_ sender: Any) {
        bookImage.image = viewModel.getNextImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
