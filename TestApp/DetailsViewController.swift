//
//  DetailsViewController.swift
//  TestApp
//
//  Created by Estudiante on 2/11/18.
//  Copyright © 2018 Capla. All rights reserved.
//

import UIKit


class DetailsViewController: UIViewController {
    var user: User?
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var nameCountry: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.configure()
    }
    
    func configure(){
        guard let user = user else {
            return
        }
        
        nameLabel.text = user.name
        nameCountry.text = user.country
    }
    
    
}
