//
//  ViewController.swift
//  Gatcha
//
//  Created by Zheng Gong on 2018/9/19.
//  Copyright © 2018年 Adfurikun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var prizeName: UILabel!
    

    @IBAction func Gatcha(_ sender: Any) {
        let prizeList = [
            Prize(name: "特賞", probability:0.01 ),
            Prize(name: "1等", probability:0.49 ),
            Prize(name: "2等", probability:4.5 ),
            Prize(name: "3等", probability:45.0 ),
            Prize(name: "残念", probability: 50.0)
        ]
        
        let prizesNo = arc4random_uniform(10000)
        print(prizesNo)
        ///1万を最大値にとる乱数
        
        let prizes = prizeList.count-1
        var k = 0
        
        print(prizes)
        
        for prize in prizeList{
            k = k + prize.number()
            if Int(prizesNo) < k {
                print(prize.name)//ここで抽選結果を表示する
                prizeName.text = prize.name
                break
            }
            print(k)
        }
    }
}

