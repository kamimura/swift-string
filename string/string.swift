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
    var length:Int { return (self as NSString).length }
    var strip:String { return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())}
    var floatValue:Float { return (self as NSString).floatValue }
    var doubleValue:Double { return (self as NSString).doubleValue }
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
        var s_temp = s.substringFromIndex(start)
        let end_temp:Int = end ? end! : s.length
        for i in start..<end_temp {
            if (s_temp.hasPrefix(sub)) {
                return i
            }
            s_temp = s.substringFromIndex(i + 1) as NSString
        }
        return -1
    }
    func indexAt(i:Int) -> String {
        if i >= 0 {
            return (self as NSString).substringWithRange(NSRange(location: i, length: 1))
        }
        let new_i = self.length + i
        return (self as NSString).substringWithRange(NSRange(location: new_i, length: 1))
    }
    func replace(old_str:String, new_str:String) -> String {
        return self.stringByReplacingOccurrencesOfString(old_str, withString: new_str)
    }
    func slice(start:Int=0, end:Int?=nil) -> String {
        let s = self as NSString
        var new_end:Int
        if (end) {
            new_end = end!
        } else {
            new_end = s.length
        }
        return  s.substringWithRange(NSRange(location: start, length:new_end - start))
    }
    func split(sep:String = "") -> [String] {
        var result:[String] = []
        if (sep == "") {
            for ch in self {
                result.append(String(ch))
            }
            return result
        }
        var s:String = self
        var len = sep.length
        var temp:String = ""
        while s != "" {
            if s.hasPrefix(sep) {
                if temp != "" {
                    result.append(temp)
                    temp = ""
                }
                s = s.slice(start: len)
            } else {
                temp += s.slice(start: 0, end: 1)
                s = s.slice(start: 1)
            }
        }
        if temp != "" {
            result.append(temp)
        }
        return result
    }
    var reversed:String { return "".join(self.split().reverse()) }
}