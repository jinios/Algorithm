// [source](https://www.hackerrank.com/challenges/kangaroo/problem)
import UIKit

let input = [21,6,47,3]
let positionA = input[0]
let positionB = input[2]
let distanceA = input[1]
let distanceB = input[3]

var currentPositionA = positionA
var currentPositionB = positionB
var flag = 0

var A = [positionA]
var B = [positionB]
var dif = [Int]()

if input[3] >= input[1] {
    print("NO")
}
if (input[0]-input[2])%(input[3]-input[1]) == 0 {
    print("YES")
}

print(A)
print(B)
print(dif)
/*
let input = [0,2,5,3]
[0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
[5, 8, 11, 14, 17, 20, 23, 26, 29, 32, 35]
[6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
런타임 오류 288 9679 9653 99


 */
