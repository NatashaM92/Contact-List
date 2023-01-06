//
//  TabBarViewController.swift
//  Contact List
//
//  Created by Наталья Миронова on 06.01.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let personList1 = Person.getPerson()
    
    override func viewDidLoad() {
        getPersonList()
    }
    
    private func getPersonList() {
        viewControllers?.forEach { viewController in
            if let navigationVC = viewController as? UINavigationController {
                if let personListVC = navigationVC.topViewController as? PersonListViewController {
                    personListVC.personList = personList1
                } else if let personListInfoVC = navigationVC.topViewController as? PersonsListInfoViewController {
                    personListInfoVC.personList = personList1
                }
            } else { return }
        }
    }
    
}
