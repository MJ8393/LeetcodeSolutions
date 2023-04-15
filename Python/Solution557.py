#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Apr 16 00:32:56 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def reverseWords(self, s):
        """
        :type s: str
        :rtype: str
        """
        sum = ""
        result = ""

        for i in s:
            if i == " ":
                result += sum[::-1]
                result += " "
                sum = ""
            else:
                sum += i
                
        result += sum[::-1]
        return result