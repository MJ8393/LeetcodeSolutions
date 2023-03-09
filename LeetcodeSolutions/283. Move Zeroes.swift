//
//  283. Move Zeroes.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 09/03/23.
//

import Foundation

class Solution283 {
    func moveZeroes(_ nums: inout [Int]) {
        var l = 0
        var r = 0
        while(r != nums.count) {
            if nums[r] != 0 {
                let x = nums[l]
                nums[l] = nums[r]
                nums[r] = x
                l += 1
            }
            r += 1
        }
    }
}

// Time: O(n)
// Space: O(1)
