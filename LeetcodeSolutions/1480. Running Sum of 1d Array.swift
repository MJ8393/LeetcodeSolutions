//
//  1480. Running Sum of 1d Array.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 12/02/23.
//

import Foundation

class Solution1480 {
    func runningSum(_ nums: [Int]) -> [Int] {
        var nums = nums // I am creating new array because swift function paramter is always constant but it should not affect memory complexity
        var sum = 0

        for i in 0...nums.count - 1 {
            sum += nums[i]
            nums[i] = sum
        }
        return nums
    }
}

// Time: O(n)
// Space: O(1)
