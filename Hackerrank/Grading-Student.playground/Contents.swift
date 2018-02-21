//[source](https://www.hackerrank.com/challenges/grading/problem)

import UIKit

var originals = [Int]()

// Get original grades
func inputGrade(_ num: Int) {
    for _ in 0..<num {
        let grade = Int(readLine()!)!
        originals.append(grade)
    }
}

// Get the next multiple of 5 from the original grade, and calculate final grade
func getFinal(_ grade: Int) -> Int{
    var finalGrade = 0
    let multiple = (Double(grade)/5.0).rounded(.up)
    let nextMultipleOfFive = (Int(multiple)*5)

    if grade < 38 {
        return grade
    }
    if nextMultipleOfFive - grade < 3 {
        finalGrade = nextMultipleOfFive
    }
    if nextMultipleOfFive - grade >= 3 {
        finalGrade = grade
    }

    return finalGrade
}


// execute codes
let numOfStudent = Int(readLine()!)!
inputGrade(numOfStudent)
for grade in originals {
    print(getFinal(grade))
}

/*
 < Example of the result >

 Input:
 4
 73
 67
 38
 33

 Output:
 75
 67
 40
 33

 */

