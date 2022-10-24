//
//  ViewController.swift
//  [iOS] RandomBingo_Phone
//
//  Created by 유현이 on 2022/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var numLabel: UILabel!
    
    var comNum = Int.random(in: 0...10)
    var myNum: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = "선택하세요"
        numLabel.text = ""
        
    }

    @IBAction func numButton(_ sender: UIButton) {
        guard let strNum = sender.currentTitle else { return }
        numLabel.text = strNum
        
        guard let intNum = Int(strNum) else { return }
        myNum = intNum
    }
    
    @IBAction func selectButton(_ sender: UIButton) {
        if comNum > myNum {
            mainLabel.text = "Up"
        } else if comNum < myNum {
            mainLabel.text = "Down"
        } else {
            mainLabel.text = "Bingo🌟"
        }
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        mainLabel.text = "선택하세요"
        numLabel.text = ""
        
        comNum = Int.random(in: 0...10)
    }
    
}

