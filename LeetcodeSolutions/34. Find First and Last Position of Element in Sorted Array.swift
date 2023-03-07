//
//  34. Find First and Last Position of Element in Sorted Array.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 07/03/23.
//

import Foundation

class Solution34 {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        return [binarySearch(nums, target, true), binarySearch(nums, target, false)]
    }
    
    func binarySearch(_ nums: [Int], _ target: Int, _ isLeft: Bool) -> Int {
        var l = 0
        var r = nums.count - 1
        var index = -1
        while(l <= r) {
            let m = (l + r) / 2
            if nums[m] > target {
                r = m - 1
            } else if nums[m] < target {
                l = m + 1
            } else {
                if isLeft {
                    index = m
                    r = m - 1
                } else {
                    index = m
                    l = m + 1
                }
            }
        }
        return index
    }
}
// Time: O(log(n))
// Space: O(1)
