//
//  Array.swift
//  Array
//
//  Created by Iuliia Kuramshyna on 28/10/23 dot
//

import XCTest

class Array: XCTestCase {
    
    //  to check if 5 appears as either the first or last element in a given array of integers. The array length should be 1 or more.
    func firstlastElement (_ input: [Int]) -> Bool {
        guard input.count >= 1 else {
            return false
        }
        if input.first == 5 || input.last == 5 {
            return true
        }
        return false
    }
    
    // to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
    func checkForEqual          (_ input: [Int]) -> Bool {
        guard input.count >= 1 else {
            return false
        }
        if input.first == input.last {
            return true
        } else {
            return false
        }
    }
    
    //  3. to test if two given arrays of integers have the same first and last element. Both arrays length must be 1 or more.
    func dosArrays (_a:[Int], _b:[Int]) -> Bool {
        if _a.first == _b.first && _a.last == _b.last {
            guard _a.count > 0, _b.count > 0 else
            {
                return false
            }
            return true
        }
        else {
        }
        return false
    }
    
    //  4 to compute the sum of all the elements of a given array of integers and length 4.
    func sumArray (_input: [Int]) -> Int {
        guard _input.count == 4 else {
            fatalError("array must have 4 elements")
        }
        let sum = _input.reduce(0, +)
        return sum
    }
    
    //  5. to rotate the elements of an array of integers to left direction. Therefore {1, 2, 3} yields {2, 3, 1}.
    func rotate_left_3(_ arra: [Int]) -> [Int] {
        var new_arra = arra
        new_arra.removeFirst()
        new_arra.append(arra.first!)
        return new_arra
    }
    
    // 5. to create a new array with the elements in reverse order of a given array of integers.
    func reverseOrder (_ arra: [Int]) -> [Int] {
        var reversedArray = [Int]()
        for element in arra.reversed() {
            reversedArray.append(element)
        }
        return reversedArray
    }
    
    func testExample() throws {
        print(reverseOrder([3,2,4,4,]))
    }
    
}

