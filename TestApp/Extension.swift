//
//  Extension.swift
//  TestApp
//
//  Created by Estudiante on 27/10/18.
//  Copyright © 2018 Capla. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {
            return UITableViewCell()
        }
        
        let index = indexPath.row
        if(tableData.count > index){
            cell.textLabel?.text = tableData[index]
        }
        return cell
    }
    
    
}
