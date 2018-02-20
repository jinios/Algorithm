//: Playground - noun: a place where people can play

import UIKit

// Practice - Basic recursion

/*
 재귀로 팩토리얼 구현
 0! = 1  // 기본단계
 n! = n*(n-1)! // 재귀단계
 */

func factorial(_ n: Int) -> Int {
    if n == 0 { // 기본단계
        return 1
    } else { // 재귀단계
        return n * factorial(n-1)
    }
}

let result = factorial(4) // result = 24



/*
 재귀로 x^n 구현
 x^0 = 1 // 기본단계
 x^n = x * x^(n-1) (if n>0) // 재귀단계
 여기서 x * x^(n-1)로 나눈 것 또한 분할정복에서 가장 기본단계를 찾는 것과 동일
 */

func square(_ x: Int, _ n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return x * square(x, n-1)
    }
}

let result2 = square(2,3) // result2 = 8


