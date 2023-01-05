//
//  PersonDetailsViewController.swift
//  Contact List
//
//  Created by Наталья Миронова on 05.01.2023.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var fullnameLabel: UILabel!
    
    @IBOutlet var phoneLabel: UILabel!
    
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullnameLabel.text = person.fullname
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.mail)"
    }

}
