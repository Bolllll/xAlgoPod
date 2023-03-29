
import Foundation
import UIKit

// can't visit from Objective-C
func reverse(_ s: inout [Character]) {
    
    for i in 0..<s.count/2 {
        // s.swapAt(i, s.count-1-i)
        (s[i], s[s.count-1-i]) = (s[s.count-1-i], s[i])
    }
}

@objcMembers
public class BXString: NSObject {
    public static let myConst = "aConst"
    
    public func reverse(s: inout[Character]) {
        return reverse(s: &s)
    }
}

let ParseApplicationId = "Family"
let ParseClientKey = "ck-1234"
let AppGreenColor = UIColor(red: 0.2, green: 0.7, blue: 0.3, alpha: 1.0)

@objc
public class Constant: NSObject {
    private override init() { super.init() }

    class public func parseApplicationId() -> String { return ParseApplicationId }
    class public func parseClientKey() -> String { return ParseClientKey }
    class public func appGreenColor() -> UIColor { return AppGreenColor }
}


public struct Algo {
    public func fibonacci(_ n: Int) -> [Int] {
        var result = [0, 1]
        guard n > 1 else { return result.prefix(n).map { $0 } }
        (2...n).forEach { i in
            result.append(result[i-1] + result[i-2])
        }
        return result
    }
}

@objcMembers
public class AlgoNS: NSObject {
    public override init() {
        super.init()
    }
    
    public func fibonacci(_ n: Int) -> Int {
        if n <= 1 {
            return n
        }
        return fibonacci(n - 1) + fibonacci(n - 2)
    }

    public func fibonacciSequence(upTo n: Int) -> [Int] {
        var result = [Int]()
        (0...n).forEach { i in
            result.append(fibonacci(i))
        }
        return result
    }
}

