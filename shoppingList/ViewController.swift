//
//  ViewController.swift
//  shoppingList
//
//  Created by David Levit on 2/8/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var newItemTextField: UITextField!
    var items: [Item] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.dataSource = self
        
        let item1 = Item(name: "Milk", quantity: 2)
        let item2 = Item(name: "eggs", quantity: 2)
        items = [item1, item2]
        let item3 = Item(name: "Bread", quantity: 5)
        items.append(item3)
        
    }
    @IBAction func addNewItemButtonPressed(_ sender: UIBarButtonItem) {
        if let newItemName = newItemTextField.text, newItemName != "" {
            let newItem = Item(name: newItemName, quantity: 1)
            items.append(newItem)
            tableView.reloadData()
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") {
        let currentItemName = items[indexPath.row].name
        cell.textLabel?.text = currentItemName
        return cell
            
        } else {
            return UITableViewCell()
        }
    }
}
// Notes on Shopping List:

//Git hub was added and how to use tags
