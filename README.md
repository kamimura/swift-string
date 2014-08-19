swift-string
============

SYNOPSIS
--------
````swift
println("WeeeEEEEeeeEEEEeee".swapcaseString) // wEEEeeeeEEEeeeeEEE
println("ABC123".isUpper)                    // true
println("abc123".isLower)                    // true
println("aeiouAEIOU".count("a"))             // 1
println("aeiouAEIOUaeiou".count("a"))        // 2
println("swift".find("i"))                   // 2
println("runner".replace("n", new_str: "b")) // rubber
println("swift".slice(start: 1, end: 2))     // w
println("swift".length)                      // 5
println(" yes  ".strip)                      // yes
println("swift".split())                     // [s, w, i, f, t]
println("/usr/bin/env".split(sep: "/"))      // [usr, bin, env]
println("aswiftbswift".split(sep: "swift"))  // [a, b]
println("swift".reversed)                    // tfiws
println("1.2".floatValue)                    // 1.20000004768372
println("1.2".doubleValue)                   // 1.2
````
