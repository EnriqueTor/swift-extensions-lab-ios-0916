//
//  Extensions.swift
//  Extensions
//
//  Created by Enrique Torrendell on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    
    func whisper() -> String {
        return self.lowercased()
    }
    
    func shout() -> String {
        return self.uppercased()
    }
    
    var pigLatin: String {
        var newSentence = ""
        var calculations = ""
        let oldSentence = self.components(separatedBy: " ")
        for word in oldSentence {
            calculations = ""
            let firstChar = word.characters.first
            calculations.append(word)
            calculations.characters.removeFirst()
            calculations.append(firstChar!)
            newSentence += calculations
            newSentence.append("ay ")
        }
        newSentence = String(newSentence.characters.dropLast())
        return newSentence.capitalized
    }
    
    var points: Int {
        var sum = 0
        let word = self.uppercased()
        for char in word.characters {
            if char == "B" || char == "C" || char == "D" || char == "F" || char == "G" || char == "H" || char == "J" || char == "K" || char == "L" || char == "M" || char == "N" || char == "P" || char == "Q" || char == "R" || char == "S" || char == "T" || char == "V" || char == "W" || char == "X" || char == "Z" {
                sum += 1
            }
            else if char == "A" || char == "E" || char == "I" || char == "O" || char == "U" || char == "Y" {
                sum += 2
            }
            else {
                sum += 0
            }
        }
        return sum
    }
    
    var unicornLevel: String {
        let unicornImage = "🦄"
        var newString = ""
        for _ in 0..<self.characters.count {
            newString += unicornImage
        }
        return newString
    }
}


extension Int {
    
    func half() -> Int {
        let number = self.hashValue / 2
        return number
    }
    
    func isDivisible(by: Int) -> Bool {
        if self % by == 0 {
            return true
        }
        return false
    }
    
    var squared: Int {
        let number = self.hashValue * self.hashValue
        return number
    }
    
    var halved: Int {
        return self.half()
    }
}







