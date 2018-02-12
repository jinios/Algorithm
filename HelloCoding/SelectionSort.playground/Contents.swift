//: Playground - noun: a place where people can play

import UIKit

func findMinimum(arr: [Int]) -> Int {
    var min = arr[0]
    var indexOfMin = 0
    for i in 0..<arr.count {
        if arr[i] < min {
            min = arr[i]
            indexOfMin = i
        }
    }
    return indexOfMin
}

let testArr = [10,4,3,2,7,1]

func selectionSort(target: [Int]) -> [Int] {
    var targetArr = target
    var newArr = [Int]()
    for _ in 0..<targetArr.count {
        let index = findMinimum(arr: targetArr)
        newArr.append(targetArr[index])
        targetArr.remove(at: index)
    }
    return newArr
}

selectionSort(target: testArr) // result: [1, 2, 3, 4, 7, 10]

