import UIKit

struct Stack<T> {

    var array = [T]()

    var top: T? {
        return array.last
    }

    var count: Int {
        return array.count
    }

    mutating func push(element: T) {
        self.array.append(element)
    }

    mutating func pop() {
        self.array.popLast()
    }

}
