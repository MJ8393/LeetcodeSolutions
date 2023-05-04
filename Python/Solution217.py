#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu May  4 06:04:33 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def containsDuplicate(self, nums):
        my_set = set()
        for i in nums: 
            if i in my_set:
                return True
            my_set.add(i)
        return False