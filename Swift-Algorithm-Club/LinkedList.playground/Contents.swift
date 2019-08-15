import UIKit

/*
 LinkedList는 스위프트의 array처럼 연속적인 저장 옵션에 이점을 가진다.
 - 리스트의 맨 첫번째 엘리먼트를 지우거나 삽입하는데에 상수시간이 걸림(빠름)
 - 안정적인 퍼포먼스
 - 링크드리스트는 노드의 체인들로 이루어져있다
 - 노드란: 밸류를 저장하고 있다 / 다음 노드에 레퍼런스를 가지고있다.
 - 다음 레퍼런스가 nil이면 마지막 노드다.
 */

class Node<T>: CustomStringConvertible {
    var value: T
    var next: Node?

    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }


    // 마지막 노드일때는 자기 밸류만 보여주고 다음 노드가 있으면 다음 노드까지 표시해준다
    var description: String {
        guard let next = self.next else { return "\(value)" }
        return "\(value) -> \(next) "
    }
}

struct LinkedList<T> {

    var head: Node<T>?
    var tail: Node<T>?

    init() {}

    var isEmpty: Bool {
        return self.head == nil
    }

    // head-first insertion
    mutating func push(_ value: T) {
        head = Node(value: value, next: head)

        // 다음 값이 없었다면 꼬리에 head를 줘서 원래 head를 한 칸 민다
        if tail == nil {
            tail = head
        }
    }

    // tail-end insertion
    mutating func append(_ value: T) {
        if isEmpty {
            push(value)
        } else {
            tail!.next = Node(value: value)
            tail = tail!.next
        }
    }

    func node(at index: Int) -> Node<T>? {
        var currentNode = head
        var currentIndex = 0

        // head가 존재할때만 동작(empty가 아닐때만), 인덱스가 bound안일때만
        while currentNode != nil, currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        return currentNode
    }

    @discardableResult
    mutating func insert(_ value: T, after node: Node<T>) -> Node<T> {
        guard tail !== node else { append(value); return }
        node.next = Node(value: value, next: node.next)
        return node.next!
    }



}

var pushExample = LinkedList<Int>()
pushExample.push(3)
pushExample.push(2)
pushExample.push(1)
pushExample.append(100)

print(pushExample)

pushExample.node(at: 0)
