//
//  File.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 13/03/23.
//

import Foundation

class Solution67 {
    func addBinary(_ a: String, _ b: String) -> String {
        let a = a.reversed()
        let b = b.reversed()

        var arrayA = [String]()
        for i in a {
            arrayA.append(String(i))
        }

        var arrayB = [String]()
        for i in b {
            arrayB.append(String(i))
        }

        let count = arrayA.count > arrayB.count ? arrayA.count : arrayB.count

        var result = ""
        var counter = 0
        var sum = 0

        for i in 0...count - 1 {
            let numA = !(i > arrayA.count - 1) ? Int(arrayA[i]) : 0
            let numB = !(i > arrayB.count - 1) ? Int(arrayB[i]) : 0
            sum = numA! + numB! + counter
            result += String(sum % 2)
            counter = sum / 2
        }
        if counter == 1 {
            result += "1"
        }
        return String(result.reversed())
    }
}
