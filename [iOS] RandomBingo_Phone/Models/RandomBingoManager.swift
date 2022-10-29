//
//  RandomBingoManager.swift
//  [iOS] RandomBingo_Phone
//
//  Created by 유현이 on 2022/10/29.
//

import Foundation


struct RandomBingoManager {
    var comNum = Int.random(in: 0...10)
    var myNum: Int = 0
    
    mutating func resetNum() {
        comNum = Int.random(in: 1...10)
        myNum = 1
    }
    
    mutating func setUserNum(num: Int) {
        myNum = num
    }
    
    func getRandomResult() -> String {
        if comNum > myNum {
            return "Up"
        } else if comNum < myNum {
            return "Down"
        } else {
            return "Bingo🌟"
        }
    }
}
