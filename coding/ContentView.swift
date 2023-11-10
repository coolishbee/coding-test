//
//  ContentView.swift
//  coding
//
//  Created by james on 2022/03/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("bridgeTruck"){
                print(bridgeTruck(2, 10, [7,4,5,6]))
            }
            Button("Grammar") {
                print(ArrayTEST())
                //print(DictTest())
            }
//            Button("reportedResult"){
//                print(reportedResult(["muzi", "frodo", "apeach", "neo"], ["muzi frodo", "apeach frodo", "frodo neo", "muzi neo", "apeach muzi"], 2))
//            }
            Button("Stack"){
                var stack = Stack<String>()
                stack.push("a")
                stack.push("b")
                stack.push("c")
                stack.push("d")
                stack.push("e")
                print(stack.elements)
                print(stack.pop() ?? "nil")
                print(stack.elements)
            }
            Button("Linked List"){
                var list = LinkedList<String>()
                list.add(data: "a")
                list.add(data: "b")
                list.add(data: "c")
                list.add(data: "d")
                list.add(data: "e")
                list.add(data: "f")
                print(list.searchNode(from: "b")?.data ?? "nil")
                list.showList()
            }
            Button("Queue"){
                var queue = Queue<String>()
                queue.enqueue("a")
                queue.enqueue("b")
                queue.enqueue("c")
                queue.enqueue("d")
                print(queue.array)
                print(queue.dequeue() ?? "nil")
                print(queue.array)
            }
            Button("Double Linked List"){
                print("double linked list")
            }
            Button("Heap"){
                print("heap")
            }
            Button("Priority Queue"){
                print("priority queue")
            }
            Button("Binary Tree"){
                print("binary tree")
            }
            Button("Binary Search Tree"){
                print("binary search tree")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
