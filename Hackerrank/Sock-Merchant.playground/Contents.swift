// [source](https://www.hackerrank.com/challenges/sock-merchant/problem)
import UIKit

let numberOfSocks = Int(readLine()!)!
let socks = readLine()!.split(separator: " ").map({ Int($0)! })

var pairSocks = 0

let pairs = socks.reduce(into: [Int:[Int]]()) { $0[$1, default:[]].append($1) }

let countOfPairs = pairs.map({$0.value.count})

for count in countOfPairs {
    pairSocks = pairSocks + count/2
}

print(pairSocks)

