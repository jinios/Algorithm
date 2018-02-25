// [source](https://www.hackerrank.com/challenges/divisible-sum-pairs/problem)

import UIKit

let firstLine = readLine()!.split(separator: " ").map({Int($0)!}) // "6 3"
let numbers = readLine()!.split(separator: " ").map({Int($0)!}) // "1 3 2 6 1 2"

let divisible = firstLine[1]
var result = 0

for i in 0..<numbers.count {
    for j in i+1..<numbers.count {
        if (numbers[i] + numbers[j]) % divisible == 0 {
            result += 1
        }
    }
}

print(result) // result == 5
