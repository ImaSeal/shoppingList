//
//  secondViewController.swift
//  shoppingList
//
//  Created by David Levit on 2/14/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
   
    @IBOutlet weak var label: UILabel!
    var passedItem: Item!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.title = passedItem.name
        label.text = "quantity:\(passedItem.quantity)"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
