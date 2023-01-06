//
//  TabBarViewController.swift
//  Contact List
//
//  Created by Наталья Миронова on 06.01.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let personList1 = Person.getPerson()
   
   // let VC = tabBarController?.viewControllers

    override func viewDidLoad() {
        super.viewDidLoad()
        let viewControllers = tabBarController?.viewControllers
        viewControllers?.forEach { viewController in
            if let personListVC = viewController as? PersonListViewController {
                personListVC.personList = personList1
            } else if let personListInfoVC = viewController as? PersonsListInfoViewController {
                personListInfoVC.personList = personList1
            }
        }
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
