//
//  main.swift
//  1769
//
//  Created by 오승기 on 2022/06/07.
//

import Foundation

var n = readLine()!
let threeArray = ["3","6","9"]
var count = 0

while n.count >= 2 {
    count += 1
    n = String(n.map{ Int(String($0))! }.reduce(0, +))
}
print(count)
if threeArray.contains(n) {
    print("YES")
} else {
    print("NO")
}


