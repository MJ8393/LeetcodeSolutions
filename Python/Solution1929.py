#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Apr 22 01:54:20 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def getConcatenation(self, nums):
        """
        :type nums: List[int]
        :rtype: List[int]
        """
        ans = []
        for i in range(0, 2 * len(nums)):
            ans.append(nums[i % len(nums)])
        return ans