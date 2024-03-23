//
//  Model.swift
//  infection
//
//  Created by Nikita Evdokimov on 23.03.24.
//

import Foundation

class Population {
    var count: Int = 0
    var persons = [Person]()
    
    init(count: Int) {
        self.count = count
        for position in 0..<count {
            self.persons.append(Person(position: position))
        }
    }
    
    func infectPerson(_ position: Int) {
        persons[position].infect()
        print("\(persons.filter({$0.isInfected}).count) persons infected")
    }
    
    func spreadInfection() {
//        DispatchQueue.global().async { [self] in
            let randomNumber = Int.random(in: 0...1000)
//            persons[10].infect()
//            persons[25].infect()
//            persons[50].infect()
//            persons[100].infect()
//            persons[150].infect()
            print("\(persons.filter({$0.isInfected}).count) persons infected")
        }
    
    //MARK: - reload data in main quee
//    }
    
}

class Person {
    var isInfected: Bool = false
    var position: Int = -1
    
    func infect() {
        isInfected = true
        print("was infected on position = \(position)")
    }
    
    init(position: Int) {
        self.position = position
    }

}

//class Engine {
//    var population: Population?
//    var person = Person()
//    var delegate: PersonCell? = nil
//    
//    func infect(personPosition: Int) {
//
//    }
//}
