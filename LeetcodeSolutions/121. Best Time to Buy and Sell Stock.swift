//
//  File.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 10/03/23.
//

import Foundation

class Solution121 {
    func maxProfit(_ prices: [Int]) -> Int {
        var max = 0
        var l = 0
        var r = 1
        var profit = 0

        while(r <  prices.count) {
            profit = prices[r] - prices[l]

            if profit > 0 {
                if profit > max {
                    max = profit
                }
            } else {
                l = r
            }
            r += 1
        }
        return max
    }
}
