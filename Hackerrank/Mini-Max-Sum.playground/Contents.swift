// [문제 출처](https://www.hackerrank.com/challenges/mini-max-sum/problem)

import UIKit

// example for sorting
let input = [5,3,8]
input.sorted()
input.sorted(by: >)

let inputStr = "5 3 8" // readLine()!

var minArr = inputStr.split(separator: " ").map({ Int($0)! }).sorted(by:>)
var maxArr = inputStr.split(separator: " ").map({ Int($0)! }).sorted()

func minSum(_ n: Int) -> Int {
    if n <= 1 {
        return minArr[1]
    } else {
        return minArr[n] + minSum(n-1)
    }
}

func maxSum(_ n: Int) -> Int {
    if n <= 1 {
        return maxArr[1]
    } else {
        return maxArr[n] + maxSum(n-1)
    }
}

print("\(minSum(minArr.count-1)) \(maxSum(maxArr.count-1))") // print "8 13"
