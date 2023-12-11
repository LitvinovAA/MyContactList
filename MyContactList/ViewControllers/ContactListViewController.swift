//
//  ContactListViewController.swift
//  MyContactList
//
//  Created by Alexey on 10.12.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {


    var persons: [Person] = []
    
    


    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullname
        
        cell.contentConfiguration = content

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personDetailsVC = segue.destination as? ContactDetailViewController
        personDetailsVC?.person = persons[indexPath.row]
    }
}
