//
//  PersonsListInfoViewController.swift
//  Contact List
//
//  Created by Наталья Миронова on 05.01.2023.
//

import UIKit

class PersonsListInfoViewController: UITableViewController {
    let personList = Person.getPerson()
    

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 2
        }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = personList[section]
        return person.fullname
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personDetails", for: indexPath)
        let person = personList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        switch indexPath.row {
        case 0:
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.mail
            content.image = UIImage(systemName: "mail")
        }
        cell.contentConfiguration = content
        return cell
    }
}
