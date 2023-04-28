#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Apr 28 21:15:52 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def wordPattern(self, pattern, s):
        words = s.split(" ")
        if len(pattern) != len(words):
            return False
        
        charToWord = {}
        wordToChar = {}
        
        for c, w in zip(pattern, words):
            if c in charToWord and charToWord[c] != w or w in wordToChar and wordToChar[w] != c:
                return False
            charToWord[c] = w
            wordToChar[w] = c
        return True
            