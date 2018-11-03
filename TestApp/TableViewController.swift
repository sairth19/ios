//
//  TableViewController.swift
//  TestApp
//
//  Created by Estudiante on 2/11/18.
//  Copyright © 2018 Capla. All rights reserved.
//

//
//  TableController.swift
//  amk_prueba
//
//  Created by Estudiante on 27/10/18.
//  Copyright © 2018 Estudiante. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") else { return UITableViewCell() }
        if tableData.count > indexPath.row {
            cell.textLabel?.text = tableData[indexPath.row]
        }
        
        return cell
    }
    
    
}
