//
//  ContactDetailViewController.swift
//  MyContactList
//
//  Created by Alexey on 10.12.2023.
//

import UIKit

final class ContactDetailViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
   
   var person: Person!

   override func viewDidLoad() {
       super.viewDidLoad()
       title = person.fullname
       phoneLabel.text = "Phone: \(person.phone)"
       emailLabel.text = "Email: \(person.email)"
   }

}
