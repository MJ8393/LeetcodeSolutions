# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

class Solution(object):
    def removeDuplicates(self, nums):
        n = len(nums) - 1
        i = 0
        j = 1
        
        while j <= n:
            if nums[i] != nums[j]:
                nums[i + 1], nums[j] = nums[j], nums[i + 1]
                i += 1
            j += 1
        return i + 1