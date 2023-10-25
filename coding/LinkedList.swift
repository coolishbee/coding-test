//
//  LinkedList.swift
//  coding
//
//  Created by james on 2022/04/29.
//

import Foundation

class Node<T: Equatable> {
    let data: T?
    var next: Node?
    
    init(data: T?, next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

struct LinkedList<T: Equatable> {
    private var head: Node<T>?
    
    func showList() {
        var now = head
        print("===== Linked List ======")
        while now != nil {
            now?.next == nil ? print("data: \(now?.data)") : print("data: \(now?.data) -> ")
            now = now?.next
        }
        print("========================")
    }
    
    mutating func add(data: T?) {
        if head == nil {
            head = Node(data: data)
            return
        }
        
        var node = head
        while node?.next != nil {
            node = node?.next
        }
        node?.next = Node(data: data)
    }
    
    func searchNode(from data: T?) -> Node<T>? {
        if head == nil {
            return nil
        }
        var node = head
        while node?.next != nil {
            if node?.data == data {
                break
            }
            node = node?.next
        }
        return node
    }
    
    mutating func insert(data: T?, after index: Int) {
        if head == nil {
            head = Node(data: data)
            return
        }
        
        var node = head
        for _ in 0..<(index-1) {
            if node?.next == nil {
                break
            }
            node = node?.next
        }
        
        let nextNode = node?.next
        node?.next = Node(data: data)
        node?.next?.next = nextNode
    }
    
    mutating func removeLast() {
        if head == nil {
            return
        }
        
        if head?.next == nil {
            head = nil
            return
        }
        
        var node = head
        while node?.next?.next != nil {
            node = node?.next
        }
        node?.next = node?.next?.next
    }
    
    mutating func delete(after index: Int) {
        if head == nil {
            return
        }
        
        if index == 0 || head?.next == nil {
            head = head?.next
            return
        }
        
        let node = head
        for _ in 0..<(index-1) {
            if node?.next?.next == nil {
                break
            }
        }
        node?.next = node?.next?.next
    }
    
    
    
}
