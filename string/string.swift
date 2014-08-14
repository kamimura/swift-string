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
    var isLower:Bool { return self.lowercaseString == self }
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
    func find(sub:String, start:Int = 0, end:Int? = nil) -> Int {
        var s = self as NSString
        var s_temp = s
        let end_temp:Int = end ? end! : s.length
        for i in start..<end_temp {
            if (s_temp.hasPrefix(sub)) {
                return i
            }
            s_temp = s.substringFromIndex(i + 1) as NSString
        }
        return -1
    }
    func replace(old_str:String, new_str:String) -> String {
        return self.stringByReplacingOccurrencesOfString(old_str, withString: new_str)
    }
    func strip() -> String {
        return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    }
}