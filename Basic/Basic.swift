//
//  Basic.swift
//  Basic
//
//  Created by Iuliia Kuramshyna on 28/10/23.
//

import XCTest

class Basic: XCTestCase {
    
    /*
     * STRING - to remove a character at specified index of a given non-empty string.
     * The value of the specified index will be in the range 0..str.length()-1 inclusive.
     */
    func remove_char(str1: String, n: Int) -> String {
        let count = str1.count
        var newWord = str1
        let index = str1.index(str1.startIndex, offsetBy: n)
        if  count > 0
        {
            newWord.remove(at: index)
        }
        return newWord
    }
    
    /*
     * Write a Swift program to accept two integer values and return true if one is negative and one is positive.
     * Return true only if both are negative.
     */
    func test_num (x:Int, y:Int) -> Bool {
        if x > 0 && y < 0
        {
            return true
        }
        else if x < 0 && y > 0
        {
            return true
        }
        else if x < 0 && y < 0
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    // STRING - to add "Is" to the front of a given string. However, if the string already begins with "Is", return the given string.
    func isstring(word: String) -> String {
        if word.hasPrefix("Is") == true
        {
            return word
        }
        else
        {
            return "Is \(word)"
        }
    }
    
    
    // STRING - change the first and last character of a given string.
    func front_back(str1: String) -> String {
        var result_word = str1
        let last_char = result_word.removeLast()
        let last_str = String(last_char)
        return last_str + str1 + last_str
    }
    
    
    // Swift program that accept two integer values and return true if one of them is 20 or if their sum is 20.
    func make_20(x: Int, y: Int) -> Bool {
        if x + y == 20 || x == 20 || y == 20
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    
    // Swift program to check if a given non-negative number is a multiple of 3 or a multiple of 5.
    func multiple35 (num:Int) -> Bool {
        if num % 3 == 0
        {
            return true
        }
        else if
            num % 5 == 0
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    // STRING take the first two characters from a given string and create a new string with the two characters added at both the front and back.
    func takeFirst2(str2:String)-> String {
        let newInput = str2
        let first2Values = newInput.prefix(2)
        let firstTwo = String(first2Values)
        return firstTwo + str2 + firstTwo
    }
    
    // STRING to test a given string whether it starts with "Is". Return true or false
    func startsWithif(str3:String)-> Bool {
        if str3.hasPrefix("Is"){
            return true
        } else {
            return false
        }
    }
    
    // RANGE return true if either of two given integers is in the range 10..30 inclusive.
    func rangeof(c:Int, d:Int)-> Bool {
        if (c >= 10 && c <= 30) || (d >= 10 && d <= 30) {  //if (10...30).contains(c) || (10...30).contains(d) {
            return true
        }
        else {
            return false
        }
    }
    
    
    // STRING to check if a given string begins with "fix", except the 'f' can be any character or number.
    func beginsWithFix(_ input: String) -> Bool {
        if input.count < 3 {
            // If the input is less than 3 characters, it can't possibly start with "fix."
            return false
        }
        
        let secondCharacter = input[input.index(input.startIndex, offsetBy: 1)] // Get the second character
        let thirdCharacter = input[input.index(input.startIndex, offsetBy: 2)]  // Get the third character
        
        if secondCharacter == "i" && thirdCharacter == "x" {
            return true
        }
        
        return false
    }
    
    // Swift program to find the LARGEST among three given integers.
    func max_three(_ x: Int, _ y: Int, _ z: Int) -> Int {
        if x > y, x > z
        {
            return x
        }
        else if y > z, y > x
        {
            return y
        }
        else if z > y, z > x
        {
            return z
        }
        else if x == y, y > z
        {
            return x
        }
        else if y == z, z > x
        {
            return y
        }
        else
        {
            return x
        }
    }
    
    // program that accept two integer values and to test which value is nearest to the value 10, or return 0 if both integers have same distance from 10.
    func close_10(_ a: Int, _ b: Int) -> Int {
        if abs(10 - b) > abs(10 - a)
        {
            return a
        }
        else if abs(10 - b) < abs(10 - a)
        {
            return b
        }
        else
        {
            return 0
        }
    }
    
    // RANGE   accept two integer values and test if they are both in the range 20..30 inclusive, or they are both in the range 30..40 inclusive.
    func in2040 (h:Int, j:Int) -> Bool {
        if (20...40).contains(h) && (20...40).contains(j) {
            return true
        } else {
            return false
        }
    }
    
    
    //   accept two positive integer values and test whether the LARGER value is in the range 20..30 inclusive, or return 0 if neither is in that range.
    func in2030 (m:Int, o:Int) -> Int {
        if (m > o && (20...30).contains(m)) {
            return m
        }
        else if (o > m && (20...30).contains(o)) {
            return o
        }
        else {
            return 0
        }
    }
    
    
    func samelastDigit(_ a: Int, _ b: Int) -> Bool {
        if a >= 0 && b >= 0 {
            return a % 10 == b % 10
        }
        return false
    }
    
    // STRING  to convert the last three characters in upper case. If the string has less than 3 chars, lowercase whatever is there.
    func case_str(_ input: String) -> String {
        if input.count < 3
        {
            return input.lowercased()
        }
        else
        {
            var newInput = input
            var str1: String = ""
            let lastThree = newInput.suffix(3)
            newInput.removeLast(3)
            _ = String(lastThree).uppercased()
            str1.append(contentsOf: newInput)
            str1.append(String(lastThree).uppercased())
            return str1
        }
    }
    
    // STRING   to create a string made of every other char starting with the first from a given string. So "Python" will return "Pto"
    func new_string(_ input: String) -> String {
        var str1 = ""
        let chars = input
        
        for (index, char) in chars.enumerated() {
            if index % 2 == 0 {
                str1.append(char)
            }
        }
        
        return str1
    }
    
    // ARRAY program to count the number of 7's in a given array of integers.
    func count7(_ input: [Int]) -> Int {
        var ctr = 0
        
        for num in input {
            if num == 7 {
                ctr += 1
            }
        }
        return ctr
    }
    
    //  ARRAY to check if one of the first 4 elements in a given array of integers is a 7. The length of the array may be less than 4.
    func arrayFront9(_ input: [Int]) -> Bool {
        guard input.count >= 4 else {
            return false
        }
        
        if input.prefix(4).contains(7) {
            return true
        }
        return false
    }
    
    //START 24 to test if the sequence of numbers 0, 1, 2 appears in a given array of integers somewhere.
    func array012(_ input: [Int]) -> Bool {
        for (index, number) in input.enumerated() {
            let third_Index = index + 2
            let second_Index = index + 1
            
            if second_Index < input.endIndex && number == 1 && input[second_Index] == 2 && input[third_Index] == 3 {
                return true
            }
        }
        return false
    }
    
    // STRING to create a new string where all the character "a" have been REMOVED except the first and last positions.
    func string_a(_ input: String) -> String {
        var chars = input
        let index_start = chars.index(after: chars.startIndex)
        let index_end = chars.index(before: chars.endIndex)
        let middleRange = index_start ..< index_end
        
        var sub_string = String(chars[middleRange])
        
        while sub_string.contains("a") {
            sub_string.remove(at: sub_string.firstIndex(of: "a")!)
        }
        
        chars.replaceSubrange(middleRange, with: sub_string)
        
        return String(chars)
    }
    
    //SIMPLIFY code
    func string_b(_ input: String) -> String {
        // Find the middle part of the string
        let startIndex = input.index(after: input.startIndex)
        let endIndex = input.index(before: input.endIndex)
        let middlePart = input[startIndex..<endIndex]
        
        // Remove all occurrences of "a" from the middle part
        let filteredMiddlePart = middlePart.filter { $0 != "a" }
        
        // Create a new string with the modified middle part
        let result = String(input.prefix(upTo: startIndex) + filteredMiddlePart + String(input.suffix(from: endIndex)))
        
        return result
    }
    
    // STRING to create a string taking characters at indexes 0, 2, 4, 6, 8, .. from a given string.
    func chars_string(_ input: String) -> String {
        var new_str = input
        var count = 1
        while count < (new_str.count) {
            new_str.remove(at: new_str.index(new_str.startIndex, offsetBy: count))
            count += 1
        }
        return new_str
    }
    
    
    //ARRAY to count the number of times that two 7's are next to each other in a given array of integers.
    func array77(_ input: [Int]) -> Int {
        var ctr = 0
        for (index, number) in input.enumerated() {
            let nextIndex = index + 1
            
            if nextIndex < input.endIndex && number == 7 && (input[nextIndex] == 7 )
            {
                ctr += 1
            }
        }
        return ctr
    }
    
    // ARRAY to test whether a value presents sequentially three times in an array of integers or not.
    func test_Triples(_ input: [Int]) -> Bool {
        
        for (index, number) in input.enumerated() {
            let thirdIndex = index + 2
            let secondIndex = index + 1
            
            if secondIndex < input.endIndex && number == input[secondIndex] && number == input[thirdIndex] {
                return true
            }
        }
        return false
    }
    
    
    //-- execution of the function, entry point
    func testCode() throws {
        
        //-- first commit
        print("Starting executing code...")
        print(test_Triples([1, 1, 1, 2, 2]))
        print("Execution finished")
        print(test_Triples([1, 1, 1, 2, 2, 2, 2]))
        print(test_Triples([1, 1, 3, 3, 1]))
        
    }
    
    
    
    
}
