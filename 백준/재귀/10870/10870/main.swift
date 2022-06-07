//
//  main.swift
//  10870
//
//  Created by 오승기 on 2022/06/07.
//

import Foundation

let n = Int(readLine()!)!

func fibo(_ number: Int) -> Int {
    if number == 0 {
        return 0
    } else if number == 1 {
        return 1
    } else {
        return fibo(number - 2) + fibo(number - 1)
    }
}

let result = fibo(n)

print(result)
