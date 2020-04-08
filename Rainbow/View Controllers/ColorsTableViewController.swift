//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Hannah Bain on 4/7/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {

    var colors: [Color] = [
        Color(colorName: "Red", color: .red),
        Color(colorName: "Orange", color: .orange),
        Color(colorName: "Yellow", color: .yellow),
        Color(colorName: "Green", color: .green),
        Color(colorName: "Blue", color: .blue),
        Color(colorName: "Indigo", color: .cyan),
        Color(colorName: "Violet", color: .purple)
]
    
    
    // MARK: - Table view data source

//This is required - How many rows should the table have?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    //This is also required - What data should each row contain?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
//1 Get the current color for the row from my array of colors
        // index path (section, row)
        // (0, 0)...
        // subscript syntax
        let color = colors[indexPath.row]
        cell.textLabel?.text = color.colorName
        cell.backgroundColor = color.color 

        return cell
    }
    

   

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        
        if segue.identifier == "ToDetailSegue" {
            if let detailVC = segue.destination as?
                ColorDetailViewController,
                let indexPath = self.tableView.indexPathForSelectedRow {
                detailVC.cellColor = colors[indexPath.row]
            }
                
            
        }
        // Pass the selected object to the new view controller.
    }
    

}
