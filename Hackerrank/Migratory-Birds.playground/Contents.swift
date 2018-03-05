//[source](https://www.hackerrank.com/challenges/migratory-birds/problem)

import UIKit

let sightings = 6
let cases = "1 4 4 4 5 3".split(separator: " ").map({ Int($0)! })
let types = [1,2,3,4,5]
var frequency = [Int]()

for type in types {
    frequency.append((cases.filter{$0 == type}).count)
}

let highestIndex = frequency.index(of:frequency.max()!)!

print(highestIndex+1)

