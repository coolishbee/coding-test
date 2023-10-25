//
//  Stack.swift
//  coding
//
//  Created by james on 2022/04/28.
//

import Foundation

struct Stack<T> {
    var elements: [T] = []
    
    var count : Int {
        return elements.count
    }
    var isEmpty : Bool {
        return elements.isEmpty
    }
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    mutating func pop() -> T? {
        return elements.popLast()
    }
    
    func top() -> T? {
        return elements.last
    }
}
