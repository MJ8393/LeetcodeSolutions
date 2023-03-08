//
//  167. Two Sum II - Input Array Is Sorted.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 09/03/23.
//

import Foundation

class Solution167 {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var l = 0
        var r = numbers.count - 1
        while(l < r) {
            if numbers[l] + numbers[r] > target {
                r -= 1
            } else if numbers[l] + numbers[r] < target {
                l += 1
            } else {
                return [l + 1, r + 1]
            }
        }
        return []
    }
}
