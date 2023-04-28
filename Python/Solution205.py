#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Apr 28 20:44:46 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def isIsomorphic(self, s, t):
        """
        :type s: str
        :type t: str
        :rtype: bool
        """
        dict1 = {}
        dict2 = {}

        if len(s) != len(t):
            return False
            
        for i in range(0, len(s)):
            if (s[i] in dict1 and dict1[s[i]] != t[i]) or (t[i] in dict2 and dict2[t[i]] != s[i]):
                return False
            dict1[s[i]] = t[i]
            dict2[t[i]] = s[i]
        return True