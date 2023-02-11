//
//  1. Two Sum.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 11/02/23.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dictionary = [Int: Int]()
        for i in 0...nums.count - 1 {
            if dictionary[target - nums[i]] == nil {
                dictionary[nums[i]] = i
            } else {
                return [dictionary[target - nums[i]]!, i]
            }
        }
        return []
    }
}

// Runtime: O(n)
// Space: O(n)
