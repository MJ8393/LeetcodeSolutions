//
//  3. Longest Substring Without Repeating Characters.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 10/03/23.
//

import Foundation

class Solution3 {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var arr = [String]()
        var hashSet = Set<String>()
        var l = 0
        var result = 0

        if s.count == 0 {
            return 0
        }

        for i in s {
            arr.append(String(i))
        }

        for r in 0...arr.count - 1 {
            while hashSet.contains(arr[r]) {
                hashSet.remove(arr[l])
                l += 1
            }
            hashSet.insert(arr[r])
            if result < r - l + 1 {
                result = r - l + 1
            }
        }
        return result
    }
}
