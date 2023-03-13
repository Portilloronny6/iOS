let firstName: String? = "Sam"

if let name = firstName {
    print("The name is \(name)")
} else {
    print("There is no name")
}

let possibleLastName: String? = "Flynn"

enum MyError: Error {
    case invalidLastName
}

guard let lastName = possibleLastName else {
    throw MyError.invalidLastName
}

print("Your last name is: \(lastName)")
