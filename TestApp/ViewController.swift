//
//  ViewController.swift
//  TestApp
//
//  Created by Sair Martinez on 27/10/18.
//  Copyright © 2018 Capla. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet var table: UITableView!
    
    var users = [
        User(name: "Sair", country: "Canada"),
        User(name: "Jose", country: "Israel"),
        User(name: "Kevin", country: "USA"),
        User(name: "Estiven", country: "Colombia"),
        User(name: "Delcy", country: "Argentina"),
        User(name: "Andres", country: "España"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? DetailsViewController else {
            return
        }
        
        
        guard let cell = sender as? UITableViewCell else {
            return
        }
        
        guard let indexPath = table.indexPath(for: cell) else {
            return
        }
        
        let index = indexPath.row
        
        viewController.user = self.users[index]
    }
}

