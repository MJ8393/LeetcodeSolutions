//
//  278. First Bad Version.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 06/03/23.
//

import Foundation

/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution278 : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 0
        var right = n
        var mid: Int

        while(left <= right) {
            mid = (left + right) / 2
            if isBadVersion(mid) == true {
                right = mid - 1
            } else if isBadVersion(mid) == false  {
                left = mid + 1
            }
        }
        return isBadVersion(left) ? left : left + 1
    }
}

// Time: O(log(n))
// Space: O(1)

class VersionControl {
    func isBadVersion(_ version: Int) -> Bool{ return true }
}
