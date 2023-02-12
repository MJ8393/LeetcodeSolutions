//
//  205. Isomorphic Strings.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 12/02/23.
//

import Foundation

class Solution205 {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var dict1 = [String: String]()
        var dict2 = [String: String]()

        for (sChar, tChar) in zip(s, t) {
            let s = String(sChar)
            let t = String(tChar)

            if (dict1[s] != nil && dict1[s] != t) || (dict2[t] != nil && dict2[t] != s) {
                return false
            }
            dict1[s] = t
            dict2[t] = s
        }
        return true
    }
}
