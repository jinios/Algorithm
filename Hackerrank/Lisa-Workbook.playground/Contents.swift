//: Playground - noun: a place where people can play

import UIKit

var chapter = 0
var maxNum = 0
var numOfproblem = [Int]()
var problems = [Int]()

func firstInput(_ str: String) {
    let firstLine = str.split(separator: " ").map({ Int($0)! })
    chapter = firstLine[0]
    maxNum = firstLine[1]
}

func secondInput(_ str: String) {
    numOfproblem = str.split(separator: " ").map({ Int($0)! })
}

func makebooks() {
    for _ in 0..<chapter {
        for i in numOfproblem {
            problems.append(i)
        }
    }
}

func iteratePage() {
    var turn = Double(problems.count)/Double(2)
    turn.round()
    for i in 0..<Int(turn){

    }
}

Double(13/2)
var w = Double(13)/Double(2)
w.round()


