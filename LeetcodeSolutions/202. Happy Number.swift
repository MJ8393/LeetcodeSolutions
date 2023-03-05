//
//  202. Happy Number.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 06/03/23.
//

import Foundation

class Solution202 {
    func isHappy(_ n: Int) -> Bool {
        var oldValues = Set<Int>()
        var newValue: Int = n
        
        while(!oldValues.contains(newValue)) {
            oldValues.insert(newValue)
            newValue = getSumOfDigits(newValue)
            if newValue == 1 {
                return true
            }
            
        }
        return false
    }
    
    func getSumOfDigits(_ num: Int) -> Int {
        var num = num
        var sum = 0
        while(num != 0) {
            sum += (num % 10) * (num % 10)
            num /= 10
        }
        return sum
    }
}

    // Time: O(n^2)
    // Memory: O(n)
