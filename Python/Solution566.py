#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Apr 16 02:06:56 2023

@author: mekhriddinjumaev
"""

class Solution(object):
    def matrixReshape(self, mat, r, c):
        """
        :type mat: List[List[int]]
        :type r: int
        :type c: int
        :rtype: List[List[int]]
        """
        if len(mat) * len(mat[0]) != r *  c:
            return mat
    
        res = [[0]*c for _ in range(r)]
        count = 0

        for i in range(0,len(mat)):
            for j in range(0,len(mat[0])):
                res[count // c][count % c] = mat[i][j]
                count += 1

        return res