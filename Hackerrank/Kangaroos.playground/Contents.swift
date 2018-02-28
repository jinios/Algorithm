// [source](https://www.hackerrank.com/challenges/kangaroo/problem)

import UIKit

let inputs = readLine()!.split(separator: " ").map({Int($0)!})
let x1 = inputs[0]
let v1 = inputs[1]
let x2 = inputs[2]
let v2 = inputs[3]

if v2 > v1 || v2 == v1 {
    print("NO")
} else if (x2 - x1) % (v1 - v2) == 0 {
    print("YES")
} else {
    print("NO")
}

