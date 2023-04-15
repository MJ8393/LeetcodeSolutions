#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Apr 15 17:11:52 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def plusOne(self, digits):
        """
        :type digits: List[int]
        :rtype: List[int]
        """
        j = len(digits)
        carry = 1
        for i in reversed(range(0, j)):
            if digits[i] + carry > 9:
                digits[i] = digits[i] + carry - 10
                carry = 1
            else:
                 digits[i] = digits[i] + carry
                 carry = 0
        if carry == 1:
            digits.insert(0, 1)
        return digits