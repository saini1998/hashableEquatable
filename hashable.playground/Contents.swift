import Cocoa

struct Person {
    let name: String
}

struct UserAccount: Hashable {
    static func == (lhs: UserAccount, rhs: UserAccount) -> Bool {
        return lhs.accountIdentifier.name == rhs.accountIdentifier.name
    }
    
    let accountIdentifier: Person
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(accountIdentifier.name)
    }
}

struct Post {
    let text: String
}

var dictionary: [ UserAccount: [Post] ] = [
    UserAccount(accountIdentifier: Person(name: "a") ): [
        Post(text: "one")
    ],
    UserAccount(accountIdentifier: Person(name: "b") ): [
        Post(text: "second")
    ]
]

if let posts = dictionary[UserAccount(accountIdentifier: Person(name: "b"))]{
    print(posts[0])
}
