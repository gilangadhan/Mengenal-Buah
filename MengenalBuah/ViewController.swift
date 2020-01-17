//
//  ViewController.swift
//  MengenalBuah
//
//  Created by Gilang Ramadhan on 15/01/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var titleOfFruits = ["Alpukat", "Apel", "Ceri", "Durian", "Jambu Air", "Manggis", "Strawberry"]
    var descOfFruits = ["Ini Alpukat", "Ini Apel", "Ini Ceri", "Ini Durian", "Ini Jambu Air", "Ini Manggis", "Ini Strawberry"]
    var imageOfFruits = [UIImage(named: "alpukat")!, UIImage(named: "apel")!, UIImage(named: "ceri")!, UIImage(named: "durian")!, UIImage(named: "jambuair")!, UIImage(named: "manggis")!, UIImage(named: "strawberry")! ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.navigationItem.title = "Aplikasi Mengenal Buah"
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleOfFruits.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath) as! TableViewCell
        
        item.title.text = titleOfFruits[indexPath.row]
        item.desc.text = descOfFruits[indexPath.row]
        item.picture.image = imageOfFruits[indexPath.row]
        
        item.picture.layer.cornerRadius = item.picture.frame.height / 2
        item.picture.clipsToBounds = true
        
        return item
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "detailController") as! DetailController
        
        controller.titleDetail = titleOfFruits[indexPath.row]
        controller.descDetail = descOfFruits[indexPath.row]
        controller.imageDetail = imageOfFruits[indexPath.row]
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
