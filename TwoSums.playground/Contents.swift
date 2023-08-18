import UIKit

struct twoSum {
    var numbers: [Int] =  []
    
    mutating func add(newElement: Int) {
        numbers.append(newElement)
    }
    
    func find(number: Int) -> (Int, Int) {
        
        for index in 0..<numbers.count {
            let element = number - numbers[index]
            
            
            if let secondIndex = numbers.firstIndex(of: element), secondIndex != index {
                return (index + 1, secondIndex + 1)
            }
        }
        //
        return (0, 0)
    }
}
// array [2,7,11,15]
// searched element 9
var example01 = twoSum()
example01.add(newElement: 2)
example01.add(newElement: 7)
example01.add(newElement: 11)
example01.add(newElement: 15)
example01.find(number: 9)
example01.find(number: 17)
example01.find(number: 18)
example01.find(number: 26)


// array [3,5,9,15,19,20]
// searched element 9
var example02 = twoSum()
example02.add(newElement: 3)
example02.add(newElement: 5)
example02.add(newElement: 9)
example02.add(newElement: 15)
example02.add(newElement: 19)
example02.add(newElement: 20)

example02.find(number: 2)
example02.find(number: 29)
example02.find(number: 34)
