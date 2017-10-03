//
//  TableViewController.swift
//  VIPER
//
//  Created by Eugenio Barquín on 28/9/17.
//  Copyright © 2017 Eugenio Barquín. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, viewProtocol {
    
    var presenter: Presenter?
    var objects = [String]()
    
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action:#selector(addNewObject))
     
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
     
        return 1
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return objects.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = objects[indexPath.row]
        return cell
    }
    
    @objc func addNewObject() {
        presenter?.addNewObject()
    }
    
    func setListWithObjects(objects: [String]) {
        self.objects = objects
        self.tableView.reloadData()
    }
}
