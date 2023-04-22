#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Apr 23 00:36:42 2023

@author: mekhriddinjumaev
"""

class ListNode(object):
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution(object):
    def reverseList(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """
        prev = None
        cur = head
        while(cur):
            temp = cur.next
            cur.next = prev
            prev = cur
            cur = temp
        return prev