//
//  File.swift
//  Gatcha
//
//  Created by Zheng Gong on 2018/9/19.
//  Copyright © 2018年 Adfurikun. All rights reserved.
//

import Foundation
class Prize:NSObject {
    var name: String
    var probability: Double
    var prizesNo = 0
    let lotNo = 10000.0
    
    
    init(name: String, probability: Double){
        self.name = name
        self.probability = probability
    }
    
    func number() -> Int{
        var result: Int
        result = Int(Double(lotNo) * Double(probability/100))
        return result
    }
}
