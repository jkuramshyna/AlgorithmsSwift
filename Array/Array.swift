//
//  Array.swift
//  Array
//
//  Created by Iuliia Kuramshyna on 28/10/23 dot
//

import XCTest

class ArrayOperations: XCTestCase {
    
    //  to check if 5 appears as either the first or last element in a given array of integers. The array length should be 1 or more.
    func contains5InFirstOrLast (_ input: [Int]) -> Bool {
        guard input.count >= 1 else {
            return false
        }
        if input.first == 5 || input.last == 5 {
            return true
        }
        return false
    }
    
    // 2. to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
    func areFirstAndLastEqual (_ input: [Int]) -> Bool {
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
    func doArraysHaveSameFirstAndLast (_a:[Int], _b:[Int]) -> Bool {
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
    func sumArrayElements (_input: [Int]) -> Int {
        guard _input.count == 4 else {
            fatalError("array must have 4 elements")
        }
        let sum = _input.reduce(0, +)
        return sum
    }
    
    //  5. to rotate the elements of an array of integers to left direction. Therefore {1, 2, 3} yields {2, 3, 1}.
    func rotateLeft (_ arra: [Int]) -> [Int] {
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
    
    func sumFirstTwoElements (_ array: [Int]) -> Int {
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
    
    func middleElementsFromArrays (_ a:[Int], _ b:[Int]) -> [Int] {
        guard a.count == 3, b.count == 3 else {
            return []
        }
        let midA = a[1]
        let midB = b[1]
        return [midA, midB]
    }
    
    // 10. create a new array of length 2 containing the first and last elements from a given array of integers. The given array length must be 1 or more. ???????????

    func firstAndLastElements (_ array:[Int]) -> [Int] {
        var new_array: [Int] = []
            
            new_array.append(array[0])
            new_array.append(array.last!)
            
            return new_array
        }
    
    // 11. to test if an array of integers contains a 3 or a 5
    
    func ifArrayContains (_ array:[Int]) -> Bool {
        for y in array {
            if y == 3 || y == 5 {
                return true
            }
        }
                return false
    }
    /*  if a.contains(3) || a.contains(5)
     {
     return true
     }
     else
     {
     return false
     }
     } */
    
    // 12. to test if an array of integers does not contain a 3 or a 5.
    
    func ifArrayDoesntContain (_a:[Int]) -> Bool {
        return !_a.contains(3) && !_a.contains(5)
}
    
    
    
    
    /* 13. to create a new array with double the length of a given array of integers and its last element is the same as the given array.
    The given array will be length 1 or more. By default, a new integer array contains all 0's.*/
    
    func createExtendedArray(_ a: [Int]) -> [Int] {
        var new_array: [Int] = [a.last!]
        
        for _ in a {
            new_array.insert(0, at: new_array.startIndex)
            new_array.insert(0, at: new_array.startIndex)
        }
        new_array.remove(at: 0)
        
        return new_array
    }
    
    /*func createExtendedArray(_ inputArray: [Int]) -> [Int] {
     var extendedArray = [Int](repeating: 0, count: inputArray.count * 2)
     extendedArray[extendedArray.count - 1] = inputArray.last!
     return extendedArray
     }     */
    
    
    // 14.to check if a given array of integers contains 3 twice, or 5 twice.
    
    func contains3And5Twice(_ array: [Int]) -> Bool {
        var count3 = 0
        var count5 = 0
        
        for number in array {
            if number == 3 {
                count3 += 1
            } else if number == 5 {
                count5 += 1
            }
        }
        
        return count3 == 2 && count5 == 2
    }

    //15.to check if two given arrays of integers have 0 as their first element
      
    func haveZeroAsFirstElement(_ array1: [Int], _ array2: [Int]) -> Bool {
        if !array1.isEmpty && array1[0] == 0 && !array2.isEmpty && array2[0] == 0 {
            return true
        }
        return false
    }
    
    /* 16. to compute the sum of the values of two given array of integers and each length 2.
     Find the array which has the largest sum and return the first array if the sum of two given arrays are equal */
    
    func findLargerArray(_ array1: [Int], _ array2: [Int]) -> [Int] {
        // Calculate the sums of the elements in both arrays
        let sum1 = array1.reduce(0, +)
        let sum2 = array2.reduce(0, +)

        if sum1 >= sum2 {
            return array1
        } else {
            return array2
    }
    }
        
    //17. to create an array of length 2 containing the middle two elements from a given array of integers and even length 2 or more
    
        func middle_elements(_ a: [Int]) -> [Int] {
            var new_array: [Int] = []
            
            if a.count % 2 == 0
              {
                let second_Index = a.count / 2
                let first_Index = second_Index - 1
                new_array = [a[first_Index], a[second_Index]]
              }
               return new_array
        }
    // 18. Write a Swift program to test if an array of length four containing all their elements from two given array (each length two) of integers,.
        
        func new_array(_ a: [Int], _ b: [Int]) -> [Int] {
            var new_array: [Int] = []
            new_array.append(contentsOf: a)
            new_array.append(contentsOf: b)
            
            return new_array
        }
        
        
        // 19. to swap the first and last elements of a given array of integers. Return the modified array (length will be at least 1).
        
        func swap_elements(_ a: [Int]) -> [Int] {
           var new_array = a
           let first_element = new_array.removeFirst()
           let last_element = new_array.removeLast()
           new_array.insert(last_element, at: new_array.startIndex)
           new_array.append(first_element)
           
           return new_array
       }

        
        
        
     
        
        
        
        
        
        
    func testExample() throws {
        print(middle_elements([1,4,5,7]))
    }
}

