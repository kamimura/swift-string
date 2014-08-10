//
//  string.swift
//  string
//
//  Created by kamimura on 8/10/14.
//  Copyright (c) 2014 kamimura. All rights reserved.
//

import Foundation

extension String {
    var swapcaseString:String {
    var result: String = ""
        for ch in self {
            let s = String(ch)
            result += s.uppercaseString == s ? s.lowercaseString : s.uppercaseString
        }
        return result
    }
    var isUpper:Bool { return self.uppercaseString == self }
    func count(sub:String) -> Int {
        var result:Int = 0
        var s = self
        let index:String.Index = "a".endIndex
        while s != "" {
            if s.hasPrefix(sub) {
                result += 1
                s = s.substringFromIndex(sub.endIndex)
            } else {
                s = s.substringFromIndex(index)
            }
            
        }
        return result
    }
}