// [source](https://www.hackerrank.com/challenges/apple-and-orange/problem)

import UIKit

let house = "7 11".split(separator: " ").map( {Int($0)!} )
let locations = "5 15".split(separator: " ").map( {Int($0)!} )
let locationsOfapples = locations[0]
let locationsOforanges = locations[1]

let numberOfFruits = "3 2".split(separator: " ").map( {Int($0)!} )
let distanceApple = "-2 2 1".split(separator: " ").map( {Int($0)!} )
let distanceOrange = "5 -6".split(separator: " ").map( {Int($0)!} )

// Calculate new location

var appleOntheHouse = 0
var orangeOntheHouse = 0

distanceApple.forEach { distance in
    if house[0]...house[1] ~= (distance + locationsOfapples) {
        appleOntheHouse += 1
    }
}

distanceOrange.forEach { distance in
    if house[0]...house[1] ~= (distance + locationsOforanges) {
        orangeOntheHouse += 1
    }
}

print(appleOntheHouse) // appleOntheHouse == 1
print(orangeOntheHouse) // orangeOntheHouse == 1
