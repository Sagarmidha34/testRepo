/*:
## Exercise - Numeric Type Conversion

 Create an integer constant `x` with a value of 10, and a double constant `y` with a value of 3.2. Create a constant `multipliedAsIntegers` equal to `x` times `y`. Does this compile? If not, fix it by converting your `Double` to an `Int` in the mathematical expression. Print the result.
 */
let x = 10
let y = 3.2
let multipliedAsIntegers = x * Int(y)
print(multipliedAsIntegers)

//:  Create a constant `multipliedAsDoubles` equal to `x` times `y`, but this time convert the `Int` to a `Double` in the expression. Print the result.
let multipliedAsDoubles = Double(x) * y
print(multipliedAsDoubles)

//:  Are the values of `multipliedAsIntegers` and `multipliedAsDoubles` different? Print a statement to the console explaining why.
print("printing integer value takes 3.2 as 3 and multiply with a integer where as printing double value takes 10.0 as double and multiply with 3.2 so get 32.0 as answere  ")

/*:
[Previous](@previous)  |  page 7 of 8  |  [Next: App Exercise - Converting Types](@next)
 */
