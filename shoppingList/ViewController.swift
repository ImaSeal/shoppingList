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
        
        var item1 = Item(name: "milk")
        var item2 = Item(name: "eggs")
        items = [item1, item2]
    }
    @IBAction func addNewItemButtonPressed(_ sender: UIBarButtonItem) {
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "Hello"
        return cell
    }
}
// Notes on Shopping List:

//Git hub was added and how to use tags
