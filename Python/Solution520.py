#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue May  2 00:42:14 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def detectCapitalUse(self, word):
        if word.isupper() or word.islower() or word.istitle():
            return True
        return False
