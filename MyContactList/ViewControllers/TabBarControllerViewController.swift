//
//  TabBarController.swift
//  MyContactList
//
//  Created by Alexey on 10.12.2023.
//

import UIKit

final class TabBarControllerViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
    }

    private func setupViewControllers() {
        guard let personTableVC = viewControllers?.first as? ContactListViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else {return }
        
        let persons = Person.getPerson()
        personTableVC.persons = persons
        sectionVC.persons = persons
        
    }
}




