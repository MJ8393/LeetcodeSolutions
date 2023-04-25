#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Apr 23 00:40:09 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def fib(self, n):
        """
        :type n: int
        :rtype: int
        """
        if n == 0 or n == 1:
            return n
        return self.fib(n - 1) + self.fib(n - 2)