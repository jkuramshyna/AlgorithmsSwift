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
    
    // 6. to create a new array with the elements in reverse order of a given array of integers.
    func reverseOrder (_ arra: [Int]) -> [Int] {
        var reversedArray = [Int]()
        for element in arra.reversed() {
            reversedArray.append(element)
        }
        return reversedArray
    }
    
    // 7. to find the larger value of a given array of integers and set all the other elements with that value. Return the changed array.
    
    func replaceWithLargest(_ array: [Int]) -> [Int] {
        guard let maxElement = array.max() else {
            return array  // Return the original array if it's empty.
        }
        
        var changedArray = [Int]()
        
        for _ in array {
            changedArray.append(maxElement)
        }
        
        return changedArray
    }
   
    // 8. to compute the sum of the first 2 elements of a given array of integers. Return 0 if the length of the given array is 0 and return the first element value If the array length is less than 2.
    
    func twoElements(_ array: [Int]) -> Int {
        if array.count == 0 {
            return 0
        }
        else if array.count < 2 {
            return array[0]
        }
        else {
            return array[0] + array[1]
        }
    }
    
    // 9. create a new array of length 2 containing the middle elements from two give array of integers and length 3.
    
    func arrayLength (_ a:[Int], _ b:[Int]) -> [Int] {
        guard a.count == 3, b.count == 3 else {
            return []
        }
        let midA = a[1]
        let midB = b[1]
        return [midA, midB]
    }
    
    // 10. create a new array of length 2 containing the first and last elements from a given array of integers. The given array length must be 1 or more. ???????????

    func arraFandL (_ array:[Int]) -> [Int] {
        guard  array.count >= 1 else {
            return []
        }
        if let primero = array.first, let ultimo = array.last {
        return [primero, ultimo]
        } else {
            return []
        }
    }
    
    func testExample() throws {
        print( arrayLength([1], [5,6]))
    }
    
}

