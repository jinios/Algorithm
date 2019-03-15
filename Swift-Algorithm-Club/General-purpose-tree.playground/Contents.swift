import UIKit

public class TreeNode<T> {
    public var value: T
    public var children = [TreeNode]()
    
    public init(_ value: T) {
        self.value = value
    }
    
    public func add(_ child: TreeNode) {
        children.append(child)
    }

}

extension TreeNode: CustomStringConvertible {
    public var description: String {
        var text = "\(value)"
        if !children.isEmpty {
            text += " {" + children.map { $0.description }.joined(separator: ", ") + "} "
        }
        return text
    }
}

extension TreeNode where T: Equatable {
    public func search(value: T) -> TreeNode? {
        if value == self.value {
            return self
        }
        for child in children {
            if let found = child.search(value: value) {
                return found
            }
        }
        return nil
    }
}

//extension TreeNode {
//    // 깊이우선탐색 - Depth-first traversal
//    public func forEachDepthFirst(visit: (TreeNode) -> Void) {
//        visit(self)
//        children.forEach {
//            $0.forEachDepthFirst(visit: visit)
//        }
//    }
//
//    // 너비우선탐색 - Level-order traversal
//    public func forEachLevelOrder(visit: (TreeNode) -> Void) {
//        visit(self)
//        var queue = Queue<TreeNode>()
//        children.forEach { queue.enqueue($0) }
//        while let node = queue.dequeue() {
//            visit(node)
//            node.children.forEach { queue.enqueue($0) }
//        }
//    }
//}

func makeBeverageTree() -> TreeNode<String> {
    let tree = TreeNode("Beverages")
    let hot = TreeNode("hot")
    let cold = TreeNode("cold")
    let tea = TreeNode("tea")
    let coffee = TreeNode("coffee")
    let chocolate = TreeNode("cocoa")
    let blackTea = TreeNode("black")
    let greenTea = TreeNode("green")
    let chaiTea = TreeNode("chai")
    let soda = TreeNode("soda")
    let milk = TreeNode("milk")
    let gingerAle = TreeNode("ginger ale")
    let bitterLemon = TreeNode("bitter lemon")
    tree.add(hot)
    tree.add(cold)
    hot.add(tea)
    hot.add(coffee)
    hot.add(chocolate)
    cold.add(soda)
    cold.add(milk)
    tea.add(blackTea)
    tea.add(greenTea)
    tea.add(chaiTea)
    soda.add(gingerAle)
    soda.add(bitterLemon)
    
    return tree
}

let exampleTree = makeBeverageTree()
print(exampleTree.description)

let resultTree = exampleTree.search(value: "black")
print(resultTree?.value)


class Node<T> {
    var value: T
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: T) {
        self.value = value
    }

    

}

// Swift의 struct나 enum타입은 밸류타입이고, binary tree는

enum BinaryTree<T> {
    case empty
    case node(BinaryTree, T, BinaryTree)
}
