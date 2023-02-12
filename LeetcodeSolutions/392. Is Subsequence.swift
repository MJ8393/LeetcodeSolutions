//
//  392. Is Subsequence.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 12/02/23.
//

import Foundation

class Solution392 {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        
        var i = 0
        var j = 0

        if s.count == 0 {
            return true
        }
        
        while(j < t.count && i < s.count) {
            if s[i] == t[j] {
                i += 1
            }
            j += 1
        }
        
        return i == s.count
    }
}

extension String {
    subscript(i: Int) -> String {
        let index = self.index(self.startIndex, offsetBy: i)
        return String(self[index])
    }
}
