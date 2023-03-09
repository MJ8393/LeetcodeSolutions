//
//  19. Remove Nth Node From End of List.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 09/03/23.
//

import Foundation

class Solution19 {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let dummy = ListNode(0, head)
        var left = dummy
        var right = head
        
        for _ in 1...n {
            if right == nil {
                continue
            }
            right = right?.next
        }
        
        while(right != nil) {
            left = left.next!
            right = right?.next
        }
        
        left.next = left.next?.next
        return dummy.next
    }
}
