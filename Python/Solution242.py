#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu May  4 05:25:28 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def isAnagram(self, s, t):

        if len(s) != len(t):
            return False

        dict_s = {}
        dict_t = {}

        for i in range(len(s)):
            dict_s[s[i]] = 1 + dict_s.get(s[i], 0)
            dict_t[t[i]] = 1 + dict_t.get(t[i], 0)

        return dict_s == dict_t