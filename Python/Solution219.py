#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu May  4 06:24:16 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def containsNearbyDuplicate(self, nums, k):
        my_dict = {}

        for i in range(len(nums)):
            tmp = nums[i]
            if tmp in my_dict:
                if i - my_dict[tmp] <= k:
                    return True
                else:
                    my_dict[tmp] = i
            else:
                my_dict[tmp] = i
                
        return False
