#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Apr 22 00:11:56 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def isValid(self, s):
        """
        :type s: str
        :rtype: bool
        """ 
        dict = {")": "(", "}" : "{", "]" : "["}
        stack = []
        for i in s:
            if i in dict:
                if stack == []:
                    return False
                char = stack.pop()
                if char != dict[i]:
                    return False
            else:
                stack.append(i)
        return stack == []
                
