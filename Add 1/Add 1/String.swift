//
//  String.swift
//  Add 1
//
//  Created by Emma Sampugnaro on 1/13/20.
//  Copyright © 2020 Emma Sampugnaro. All rights reserved.
//

import Foundation

extension String
{
    // Generate a random number
    static func randomNumber(length: Int) -> String
    {
        var result = ""

        for _ in 0..<length {
            let digit = Int.random(in: 0...9)
            // concatenate this number
            result += "\(digit)"
        }

        return result
    }
    
    func integer(at n: Int) -> Int
    {
        // get an array of characters
        let index = self.index(self.startIndex, offsetBy: n)

        return self[index].wholeNumberValue ?? 0
    }
}
