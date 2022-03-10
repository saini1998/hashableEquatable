import Cocoa

struct Person {
    let name: String
}

struct Car: Equatable {
    static func == (lhs: Car, rhs: Car) -> Bool {
        return lhs.make == rhs.make && lhs.model == rhs.model && lhs.owner.name.lowercased() == rhs.owner.name.lowercased()
    }
    
    let make: String
    let model: String
    let owner: Person
}

let bmw = Car(make: "bmw", model: "S5", owner: Person(name: "Teeds"))

let benz = Car(make: "benz", model: "E3", owner: Person(name: "Nutz"))

if bmw == benz {
    print("Same")
} else {
    print("Different")
}
