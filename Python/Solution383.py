#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Apr 28 21:52:32 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def canConstruct(self, ransomNote, magazine):
        dictRan = {}
        dictMag = {}

        for i in ransomNote:
            if i in dictRan:
                dictRan[i] += 1
            else:
                dictRan[i] = 1

        for i in magazine:
            if i in dictMag:
                dictMag[i] += 1
            else:
                dictMag[i] = 1

        for i in dictRan:
            if not(i in dictMag) or dictMag[i] < dictRan[i]:
                return False
        return True
        
