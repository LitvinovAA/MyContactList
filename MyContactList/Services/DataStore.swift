//
//  DataStore.swift
//  MyContactList
//
//  Created by Alexey on 10.12.2023.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    private init() {}
    
    let names: [String] =
    [
    "John", "Sharon", "Aaron", "Steven", "Nicola", "Ted", "Bruce", "Carl", "Allan", "Tim"
    ]
    
    let surnames: [String] =
    [
    "Murphy", "Jankin", "Williams", "Black", "Butler", "Issaak", "Smith", "Dow", "Mask", "Tramp"
    ]
    
    let phones: [String] =
    [
    "11111111", "22222222", "3333333", "44444444", "555555555", "66666666", "777777777", "88888888", "999999999", "121212121"
    ]
    
    let emails: [String] =
    [
    "aaa@mail.ru", "sss@mail.ru", "ddd@mail.ru", "fff@mail.ru", "ggg@mail.ru", "hhh@mail.ru", "jjj@mail.ru", "kkk@mail.ru", "lll@mail.ru", "qqq@mail.ru",
    ]
}
