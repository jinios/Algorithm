import UIKit

struct Queue<T> {

    private var array: [T?] = []
    private var head: Int = 0
    var isEmpty: Bool {
        return self.count() == 0
    }

    mutating func enque(_ element: T) {
        self.array.append(element)
    }

    mutating func dequeue() -> T? {
        var result: T?
        guard self.count() > 0 else { return nil }
        result = self.array[head]
        self.array[head] = nil
        head += 1

        if array.count > 50 || Double(head) / Double(array.count - 1) > 0.5 {
            self.array.removeFirst(head)
            head = 0
        }

        return result
    }

    func count() -> Int {
        return self.array.count - head > 0 ? self.array.count - head : 0
    }

    func front() -> T? {
        return self.isEmpty ? nil : self.array[head]
    }
}

