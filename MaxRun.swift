import Foundation
// 
//  MaxRun.swift
//  ICS4U-Week-A1-Swift
// 
//  Created by Christina on 25/02/20.
//  Copyright © Christina Ngwa. All rights reserved.
// 
// This program finds the length of the largest length.
// 

// variables and constants
var runCount:Int = 0
var maxRun:Int = 1

// input
print("Let’s find the length of the largest run in a string.")
print("\nEnter a string: ")
var str = String(readLine()!) 
var previous = str.remove(at: str.startIndex)

// process
for i in str {
    if ( i == previous ) {
        runCount = runCount + 1
    }

    if (runCount > maxRun) {
        maxRun = runCount
    }
    previous = i
}

// output
print("\nThe longest run is \(maxRun).")