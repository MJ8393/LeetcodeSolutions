//
//  35. Search Insert Position.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 06/03/23.
//

import Foundation

class Solution35 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1
        while(l <= r) {
            let mid = (l + r) / 2
            if nums[mid] > target {
                r = mid - 1
            } else if nums[mid] < target {
                l = mid + 1
            } else {
                return mid
            }
        }
        return l
    }
}
