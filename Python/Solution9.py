#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Apr 15 15:45:30 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def isPalindrome(self, x):
        """
        :type x: int
        :rtype: bool
        """
        temp = x
        sum = 0
        while temp > 0:
            mod = temp % 10
            sum = sum * 10 + mod
            temp //= 10
        return x == sum