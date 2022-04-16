//
//  TableTableViewController.swift
//  UITableViewAddText
//
//  Created by Андрей Сапожников on 07.04.2022.
//

import UIKit

class TableViewController: UITableViewController {
    
    var objects = [Text]()


    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func unwindSegue(segue:UIStoryboardSegue) {
        guard segue.identifier == "saveSegue" else { return }
        let sourceVC = segue.source as! NewTextViewController
        let inputText = sourceVC.inputText

        let newIndexPath = IndexPath(row: objects.count, section: 0)
        objects.append(inputText)
        tableView.insertRows(at: [newIndexPath], with: .fade)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return objects.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "outputTextCell", for: indexPath) as! TableViewCell
        let object = objects[indexPath.row]
        cell.set(object: object)
            
        return cell
    }
    

}
