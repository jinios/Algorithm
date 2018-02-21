
import UIKit

/*
 < 퀵소트 기초 >
 1. 파티션에 원소가 하나면 종료.
 2. 적당한 숫자 하나를 pivot으로 고른다.
 3. pivot보다 작은 숫자는 왼쪽 큰 숫자는 오른쪽으로, pivot양 옆으로 하위배열을 나눔
 pivot의 왼쪽 배열과 오른쪽 배열에 대해 반복적으로 수행

 - 평균적으로 빠른 알고리즘이지만 O(n log n)
 - 최악의 경우(배열을 절반으로 나누지 않고 가장 처음이나 끝 수를 pivot으로 고른경우) O(n^2). 느리다.

 <예시>
 - 최악의 경우
 배열이 [1,2,3,4,5,6,7,8]이고 pivot은 항상 첫번째 value 일때
 두 개의 하위배열은 항상 빈 배열이 되고, 호출스택의 전체 높이는 8, 즉 O(n).
 각각의 호출 스택을 분석하는데 걸리는 시간은 O(n)
 전체 시간 복잡도는 O(n) * O(n) = O(n^2)

 - 평균적인 경우
 배열이 [1,2,3,4,5,6,7,8]이고 pivot은 항상 정 가운데 있는 value를 선택
 호출스택의 전체 높이는 4, 즉 O(log n)
 각각의 호출 스택을 분석하는데 걸리는 시간은 O(n)
 전체 시간 복잡도는 O(log n) * O(n) = O(n log n)

 */


func quickSort(_ arr: [Int]) -> [Int] {
    let pivot = arr[0]
    var equal = [Int]()
    var less = [Int]()
    var greater = [Int]()

    if arr.count < 2 {
        return arr
    } else {
    for i in arr {
        if i < pivot {
            less.append(i)
        }
        if i == pivot {
            equal.append(i)
        }
        if i > pivot {
            greater.append(i)
        }
    }
    return quickSort(less) as [Int] + [pivot] + quickSort(greater) as [Int]
    }
}

quickSort([5,3,4,9,10])
// 거의 무한루프


/*
 에러 발생 포인트 :
 quickSort(less) + [pivot] + quickSort(greater) 하면
 'Int' is not convertible to '[Int]'에러가 남.
 [pivot] 대신에 pivot값을 Array에 담아서 변수로 지정하여 명시해준 값으로 array끼리 더하니 에러 없이 작동함.
 아니면 quickSort(less) as [Int] + [pivot] + quickSort(greater) as [Int] 이렇게 더해주면 에러 없이 작동.
 찾아보니 컴파일러가 어떠한(우리는 알 수 없는) 포인트에서 이 값이 Int인지 [Int]인지를 추적하지 못하는 것 같다는 의견 발견함.
 [참고](https://gist.github.com/chriseidhof/c92a4869aac2b468acdd86c8233e4bb0)
 [pivot]값을 따로 [Int]형 변수에 저장하기 보다는 컴파일러가 추적하지 못하는 값의 형식이 [Int]라는 것을 알려주기 위해 두번째 방법 사용함. 다만 위와 같은 에러가 발생하는 정확한 이유는 아직 찾지못함.
 return quickSort(less) as [Int] + [pivot] + quickSort(greater) as [Int]
 */


func quick(_ a: [Int]) -> [Int] {
    guard a.count > 2 else { return a }

    let pivot = a[0]
    let less = a.filter { $0 < pivot }
    let equal = a.filter { $0 == pivot }
    let greater = a.filter { $0 > pivot }

    return quick(less) + equal + quick(greater)
}

//quick([5,3,4,9])
