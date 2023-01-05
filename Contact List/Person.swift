//
//  Person.swift
//  Contact List
//
//  Created by Наталья Миронова on 05.01.2023.
//

import Foundation  //удалить?



struct Person {
    let name: String
    let surname: String
    let phone: String
    let mail: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        let dataStore = DataStore()
        let shuffledNames = dataStore.names.shuffled()
        let shuffledSurnames = dataStore.surnames.shuffled()
        let shuffledPhones = dataStore.phones.shuffled()
        let shuffledMails = dataStore.mails.shuffled()
        
        for i in 0...9 {
            let person = Person(name: shuffledNames[i], surname: shuffledSurnames[i], phone: shuffledPhones[i], mail: shuffledMails[i])
            persons.append(person)
        }
        return persons
    }
}


