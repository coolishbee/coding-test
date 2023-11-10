//
//  Grammar.swift
//  coding
//
//  Created by james on 2023/10/25.
//

import Foundation

func ArrayTEST() -> String {
//    var bridge = Array(repeating: 0, count: 3)
//    print(bridge)
//    bridge.insert(0, at: 0)
//    print(bridge)
    
    
//    let emergency = [3, 76, 24]
//    var count = 0
//    for i in emergency.sorted(by: >) {
//        print(i)
//        count += 1
//    }
//    print(count)
//
//    let result = emergency.map {
//        emergency.sorted(by: > ).firstIndex(of: $0)!
//    }
//    print(result)
    
    
//    var result = 0
//    let absolutes = [4, 7, 12]
//    let signs = [true, false, true]
//    for i in 0..<absolutes.count {
//        if (signs[i] == true) {
//            result += absolutes[i]
//        }else if (signs[i]) == false {
//            result -= absolutes[i]
//        }
//    }
//    print(result)
    
    
//    result = (0..<absolutes.count).map {
//        signs[$0] ? absolutes[$0] : -absolutes[$0]
//    }.reduce(0, +)
//    print(result)
    
    
//    result = zip(absolutes, signs)
//        .map { $1 ? $0 : -$0 }
//        .reduce(0, +)
//    print(result)

    
//    let n = 3000
//    let result = Array(1...n).filter{
//        n % $0 == 0
//    }.reduce(0, +)
//    print(result)
    
//    //1.
//    let s = "1 2 3 4"
//    let arrStr = s.split(separator: " ")
//    var arrInt = [Int]()
//
//    for i in arrStr {
//        guard let num = Int(i) else {
//            return " "
//        }
//        arrInt.append(num)
//    }
//    var result = "\(arrInt.min()!) \(arrInt.max()!)"
//    print(result)
//
//    //2.
//    let list = s.split(separator: " ")
//    let numbers = list.map { Int($0)! }
//    let min = numbers.min()!
//    let max = numbers.max()!
//    result = "\(min) \(max)"
//    print(result)
//
//    //3.
//    let array = s.split(separator: " ").map{Int($0)!}.sorted(by: <)
//    result = "\(array.first!) \(array.last!)"
//    print(result)
//
//    //4.
//    let arr = s.components(separatedBy: " ").map{Int($0)!}
//    result = String(arr.min()!) + " " + String(arr.max()!)
//    print(result)
    
    let id_list = ["muzi", "frodo", "apeach", "neo"]
    let report = ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"]
    let k = 2
    
    let arrReport = Array(Set(report))
    var arrResult = Array(repeating: 0, count: id_list.count)
    var dictReport = [String:[String]]()
    var ids = [String:Int]()
    
    for (idx, i) in id_list.enumerated() {
        ids[i] = idx
        dictReport[i] = []
    }
    
    for person in arrReport {
        let temp = person.split(separator: " ")
        print(temp)
        let reporter = String(temp.first!)
        let reported = String(temp.last!)
        
        dictReport[reported]?.append(reporter)
    }
    
    for name in ids.keys {
        let list = dictReport[name]!
        print(list)
        if list.count >= k {
            for item in list {
                arrResult[ids[item]!] += 1
            }
        }
    }
    
    print(arrResult)
    
    return "complete"
}

func DictTest() {
    var dict = [String: Int]()
    print(dict)
    dict["race"] = 3
    print(dict)
    dict["kakako"] = 55
    print(dict)
}
