//
//  344. Reverse String.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 09/03/23.
//

import Foundation

class Solution344 {
    func reverseString(_ s: inout [Character]) {
        var l = 0
        var r = s.count - 1
        while(l < r) {
            let x = s[l]
            s[l] = s[r]
            s[r] = x
            l += 1
            r -= 1
        }
    }
}

// Time: O(n)
// Space: O(1)
