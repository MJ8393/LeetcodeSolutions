//
//  724. Find Pivot Index.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 12/02/23.
//

import Foundation

class Solution724 {
    func pivotIndex(_ nums: [Int]) -> Int {
        var sum = 0
        var left = 0
        var right = 0
        for i in nums {
            sum += i
        }
        for i in 0...nums.count - 1 {
            right += nums[i]
            if left == sum - right {
                return i
            }
            left += nums[i]
        }
        return -1
    }
}

// Time: O(n)
// Space: O(1)
