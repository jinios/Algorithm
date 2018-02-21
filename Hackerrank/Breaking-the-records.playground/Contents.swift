// [source](https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem)

import UIKit

// Assume that input would be 4 and "10 15 3 2"
let numberOfGames = Int(readLine()!)!
var scores = readLine()!.split(separator: " ").map({Int($0)!})

var highest = scores[0]
var lowest = scores[0]

var highestIndex = 0
var lowestIndex = 0

scores.forEach { score in
    if score == highest || score == lowest {
        return
    }
    if score > highest {
        highestIndex += 1
        highest = score
    }
    if score < lowest {
        lowestIndex += 1
        lowest = score
    }
}

print("\(highestIndex) \(lowestIndex)") // result : "1 2"


