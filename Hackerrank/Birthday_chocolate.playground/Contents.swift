// [source](https://www.hackerrank.com/challenges/the-birthday-bar/problem)

import UIKit

/*
 Assume that input values would be below.

 let numOfChocolate = 5
 let chocolate = [1,2,1,3,2]
 let birthday = [3,2]
 */

let numOfChocolate = Int(readLine()!)!
let chocolate = readLine()!.split(separator: " ").map({ Int($0)! })
let birthday = readLine()!.split(separator: " ").map({ Int($0)! })

let month = birthday[1]
let day = birthday[0]
var result = 0
var totalOfChocolate = 0

for i in 0...numOfChocolate-month {
    for n in i..<i+month {
        totalOfChocolate += chocolate[n]
    }
    if totalOfChocolate == day {
        result += 1
    }
    totalOfChocolate = 0
}

print(result) // result == 2

