//
//  main.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 11/02/23.
//

import Foundation

var nums = [1,2]

var maxSum = nums[0]

        var preSum = nums[0]

        for i in 1...nums.count - 1 {
             
            if preSum < 0 {
                preSum = 0
            }
            
            preSum += nums[i]

            if preSum > maxSum {
                maxSum = preSum
            }
        }
        print(maxSum)
