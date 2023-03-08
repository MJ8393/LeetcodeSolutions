//
//  File.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 09/03/23.
//

import Foundation

class Solution557 {
    func reverseWords(_ s: String) -> String {
        var result = ""
        var sum = ""
        for i in s {
            if String(i) == " " {
                sum = String(sum.reversed())
                result += sum
                result += " "
                sum = ""
            } else {
                sum += String(i)
            }
        }
        sum = String(sum.reversed())
        result += sum
        return result
    }
}
