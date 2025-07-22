import UIKit
/*:
## Exercise - Guard Statements

 Imagine you want to write a function to calculate the area of a rectangle. However, if you pass a negative number into the function, you don't want it to calculate a negative area. Create a function called `calculateArea` that takes two `Double` parameters, `x` and `y`, and returns an optional `Double`. Write a guard statement at the beginning of the function that verifies each of the parameters is greater than zero and returns `nil` if not. When the guard has succeeded, calculate the area by multiplying `x` and `y` together, then return the area. Call the function once with positive numbers and once with at least one negative number.
 */
func calculateArea(width: Int?, height: Int?)-> Double?{
    guard let width = width, width > 0, let height = height, height > 0 else{
        return nil
    }
    return Double(width * height)
}
func testRun()-> Double?{
    guard let area = calculateArea(width: 10, height: 6) else{
        return nil
    }
    return area
}
print(testRun())

//:  Create a function called `add` that takes two optional integers as parameters and returns an optional integer. You should use one `guard` statement to unwrap both optional parameters, returning `nil` in the `guard` body if one or both of the parameters doesn't have a value. If both parameters can successfully be unwrapped, return their sum. Call the function once with non-`nil` numbers and once with at least one parameter being `nil`.
func add(x: Int?, y: Int?)-> Int?{
    guard let x = x, x != 0, let y = y, y != 0 else{
        return nil;
    }
    return x + y
}
func test()-> Int?{
    guard let res = add(x: 5,y: 7) else{
        return nil
    }
    return res;
}
print(test());

/*:
 When working with UIKit objects, you will occasionally need to unwrap optionals to handle user input. For example, the text fields initialized below have `text` properties that are of type `String?`.

 Write a function below the given code called `createUser` that takes no parameters and returns an optional `User` object. Write a guard statement at the beginning of the function that unwraps the values of each text field's `text` property, and returns `nil` if not all values are successfully unwrapped. After the guard statement, use the unwrapped values to create and return and instance of `User`.
 */
struct User {
    var firstName: String
    var lastName: String
    var age: String
}

let firstNameTextField = UITextField()
let lastNameTextField = UITextField()
let ageTextField = UITextField()

firstNameTextField.text = "Jonathan"
lastNameTextField.text = "Sanders"
ageTextField.text = "28"
func createUser()-> User?{
    guard let firstName = firstNameTextField.text, !firstName.isEmpty,
          let lastName = lastNameTextField.text, !lastName.isEmpty,
          let age = ageTextField.text, !age.isEmpty
    else{
        return nil
    }
    return User(firstName: firstName, lastName: lastName, age: age)
}


//:  Call the function you made above and capture the return value. Unwrap the `User` with standard optional binding and print a statement using each of its properties.
if let user = createUser(){
    print("\(user.firstName), \(user.lastName), \(user.age)")
}else{
    print("Failed to create")
}
/*:
page 1 of 2  |  [Next: App Exercise - Guard](@next)
 */
