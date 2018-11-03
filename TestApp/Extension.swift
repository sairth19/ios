//
//  Extension.swift
//  TestApp
//
//  Created by Sair Martinez on 27/10/18.
//  Copyright © 2018 Capla. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CustomCell else {
            return CustomCell()
        }
        
        let index = indexPath.row
        
        cell.nameLabel.text = users[index].name
        cell.countryLabel.text = users[index].country
        
        return cell
        
    }
    
    
}
