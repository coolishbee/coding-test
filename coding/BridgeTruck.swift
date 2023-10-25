//
//  BridgeTruck.swift
//  coding
//
//  다리를 지나는 트럭
//
//  Created by james on 2022/04/27.
//

import Foundation

func bridgeTruck(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var bridge = Array(repeating: 0, count: bridge_length)
    var trucks = truck_weights
    var weightSum = trucks.first!
    var time = 1
    
    bridge[0] = trucks.removeFirst()
    
    while weightSum != 0 || !trucks.isEmpty {
        time += 1
        bridge.insert(0, at: 0)
        weightSum -= bridge.removeLast()
        
        if let nextTruck = trucks.first {
            if weightSum + nextTruck <= weight {
                bridge[0] = trucks.removeFirst()
                weightSum += bridge[0]
            }
        }
    }
    
    return time
}
