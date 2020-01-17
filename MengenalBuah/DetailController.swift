//
//  DetailController.swift
//  MengenalBuah
//
//  Created by Gilang Ramadhan on 16/01/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    @IBOutlet weak var titleOfFruit: UILabel!
    @IBOutlet weak var imageOfFruit: UIImageView!
    @IBOutlet weak var descOfFruit: UILabel!
    
    var titleDetail: String?
    var descDetail: String?
    var imageDetail: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleOfFruit.text = titleDetail
        descOfFruit.text =  descDetail
        imageOfFruit.image =  imageDetail
        
        self.navigationItem.title = titleDetail
    }
}
