//[source](https://www.hackerrank.com/challenges/bon-appetit/problem)

import UIKit

let numberOfMenu = readLine()!.split(separator: " ").map({ Int($0)! })
let declineFood = numberOfMenu[1]
let price = readLine()!.split(separator: " ").map({ Int($0)! })
let paidByAnna = Int(readLine()!)!

let halfCost = (price.reduce(0, { $0 + $1 }) - price[declineFood])/2

if halfCost < paidByAnna {
    print(paidByAnna-halfCost)
} else if halfCost == paidByAnna {
    print("Bon Appetit")
}
