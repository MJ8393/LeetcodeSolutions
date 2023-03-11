//
//  206. Reverse Linked List.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 11/03/23.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

class Solution206 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var cur = head
        var prev: ListNode?
        while(cur != nil) {
            var temp = cur?.next
            cur?.next = prev
            prev = cur
            cur = temp
        }
        return prev
    }
}
