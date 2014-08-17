//
//  main.swift
//  string
//
//  Created by kamimura on 8/10/14.
//  Copyright (c) 2014 kamimura. All rights reserved.
//

import Foundation

println("Hello, World!")

println("hello".uppercaseString)

println("Happy Birth!".lowercaseString)

println("WeeeEEEEeeeEEEEeee".swapcaseString)

println("ABC123".isUpper)

println("abc123".isLower)

println("aeiouAEIOU".count("a"))

println("aeiouAEIOUaeiou".count("a"))

println("swift".find("i"))

println("runner".replace("n", new_str: "b"))

println("swift".slice(start: 1, end: 2))

println("swift".length)

println("swift".split())

println("/usr/bin/local".split(sep: "/"))

println("aswiftbswift".split(sep: "swift"))

println("swift".reversed)