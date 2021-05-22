/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## Sorting of arrays of simple types
Sort the simple array of numbers.

*/
var numbers = [13, 12, 2, 6, 11, 2]

// Sort numbers ascending
let sortedNumbers = numbers.sorted()

// Sort numbers descending
//let sortedNumbersDescending = numbers.sorted(by: >)
let sortedNumbersDescending = numbers.sorted { $0 > $1 }
sortedNumbersDescending

/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
