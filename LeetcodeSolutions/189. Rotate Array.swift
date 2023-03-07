//
//  189. Rotate Array.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 07/03/23.
//

import Foundation

class Solution189 {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if k >= 1 {
            for _ in 1...k {
                let x = nums.popLast()
                nums.insert(x!, at: 0)
            }
        }
    }
}
