//
//  main.swift
//  遍历枚举
//
//  Created by 康梁 on 16/1/17.
//  Copyright © 2016年 LeonKang. All rights reserved.
//

import Foundation

enum test {
    case name(String)
    case age
    case baibai
    static let allValue = ["name", "age", "baibai"]
}




for item in test.allValue {
    print(item)
}

enum test2: Int {
    case name = 1, name2
    case age
    case baibai
    static func printName(name: String) -> String {
        return "my name is " + name
    }
}

var i: test2 = .name

for i in 0...3 {
    print(i)
}

let kl = test2.printName("kl")
print(kl)
