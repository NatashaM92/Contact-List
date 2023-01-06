//
//  PersonListViewController.swift
//  Contact List
//
//  Created by Наталья Миронова on 05.01.2023.
//

import UIKit

class PersonListViewController: UITableViewController {
    var personList: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count 
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullname
        cell.contentConfiguration = content
        return cell
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailsVC  = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personDetailsVC.person = personList[indexPath.row]
    }

}
