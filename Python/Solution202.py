#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu May  4 05:46:55 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def isHappy(self, n):
        my_set = set()
        while n != 1:
            if n in my_set:
                return False
            else:
                my_set.add(n)
            n = self.square_degits(n)
        return True

    def square_degits(self, n):
        sum = 0
        while n:
            mod = n % 10
            sum += mod ** 2
            n //= 10
        return sum