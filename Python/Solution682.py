#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Apr 22 01:19:18 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def calPoints(self, operations):
        """
        :type operations: List[str]
        :rtype: int
        """
        stack = []
        
        for i in operations:
            if i == '+':
                a = stack[-1]
                b = stack[-2]
                stack.append(a + b)
            elif i == 'D':
                a = stack[-1]
                stack.append(2 * int(a))
            elif i == 'C':
                stack.pop()
            else:
                stack.append(int(i))
        return sum(stack)
                