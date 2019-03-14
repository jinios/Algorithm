import UIKit

/*
 
 - array에서 특정 element의 위치를 알고자 할때, linear search로 탐색하면 최악의 케이스인 경우 시간복잡도가 너무 높을 수 있음
 - 이를 보완하기 위해 Binary search에서는 Divide and conquer기법을 사용한다.
 - 반드시 오름차순으로 정렬된 상태로 사용해야한다.
 - 시간복잡도는 O(log n)
 
 */

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]

func binarySearch<T: Comparable>(arr: [T], key: T, range: Range<Int>) -> Int? {
    
    guard range.lowerBound <= range.upperBound else { return nil }
    
    let midIndex = range.count / 2 // we're using integers, the answer is rounded down.
    
    if arr[midIndex] == key {
        return midIndex
    } else if arr[midIndex] > key {
        return binarySearch(arr: arr, key: key, range: range.lowerBound..<midIndex)
    } else if arr[midIndex] < key {
        return binarySearch(arr: arr, key: key, range: midIndex + 1..<range.upperBound)
    }
    return nil
}

binarySearch(arr: numbers, key: 29, range: 0..<numbers.count)
