//
//  Person.swift
//  MyContactList
//
//  Created by Alexey on 10.12.2023.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        let dataStore = DataStore.shared
        var persons: [Person] = []

        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.emails.shuffled()
        let phones = dataStore.phones.shuffled()
        
        let countPairs = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )

        
        for index in 0..<countPairs {
            persons.append(Person(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]
                )
            )
        }
        
        return persons
    }

}
