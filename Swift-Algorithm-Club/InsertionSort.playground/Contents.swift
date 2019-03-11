import UIKit

// 삽입정렬을 두 어레이를 만들지 않고도 만들 수 있는 방법이 있음
/*
 - 삽입정렬을 시행할 배열 내 바(bar)를 만들어서 바의 위치를 옮기면서
 바의 왼쪽은 정렬 완료, 바의 오른쪽은 정렬 미완료 상태로 둔다.
 바의 오른쪽에 있는 수 중 제일 첫번째 수를 바의 왼쪽으로 옮기고, 자신의 인덱스-1 자리에 있는 값과 비교하여
 자신보다 크면 swap하여 자리를 바꾼다. (정렬이 완료될때까지 반복)
 바의 오른쪽으로 element가 더이상 남아있지 않으면 정렬 종료
 */

func insertionSort(_ array: [Int]) -> [Int] {
    var arr = array
    for i in 1..<arr.count {
        var y = i
        /*
         y값이 0이면 while문을 타지 않는다.
         y-1값이 y값보다 클때만 swap이 필요하므로 while문을 탄다.
         인덱스 맨 앞 까지 y 인덱스를 하나씩 줄여나가면서 bar의 왼쪽이 오른쪽 보다 더 크면 while문으로 들어가서
         값을 swap한다. swap이 완료됐으면 현재 비교 타켓인 엘리먼트를 정렬이 만족할때까지 또 비교해야하기때문에
         y값에서 1 빼줌
        */
        while y > 0 && (arr[y] < arr[y-1]){ // 어레이의 이전 엘리먼트와 비교해서 값이 작은가?
            arr.swapAt(y-1, y)
            y -= 1
        }
    }
    return arr
}

let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
insertionSort(list)
