//
//  876. Middle of the Linked List.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 09/03/23.
//

import Foundation

// Description
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution876 {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var node = head
        var count = 0
        while(node != nil) {
            count += 1
            node = node?.next
        }
        node = head
        count = count / 2
        if count == 0 {
            return head
        }
        for _ in 1...count {
            node = node?.next
        }
        return node
    }
}

