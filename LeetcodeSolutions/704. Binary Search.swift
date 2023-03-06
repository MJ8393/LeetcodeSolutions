//
//  704. Binary Search.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 06/03/23.
//

import Foundation

class Solution704 {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var mid = 0
        while(left <= right) {
            mid = (left + right) / 2
            if nums[mid] > target {
                right = mid - 1
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                return mid
            }
        }
        return -1
    }
}

// Time: O(log(n))
// Space: O(1)
