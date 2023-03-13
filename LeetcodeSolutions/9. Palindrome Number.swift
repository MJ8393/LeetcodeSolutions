//
//  9. Palindrome Number.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 13/03/23.
//

import Foundation

class Solution9 {
    func isPalindrome(_ x: Int) -> Bool {
        var n = x
        var res = 0
        if n < 0 {
            return false
        }
        while(n > 0) {
            res = res * 10 + n % 10
            n = n / 10
        }
        return res ==  x
    }
}
