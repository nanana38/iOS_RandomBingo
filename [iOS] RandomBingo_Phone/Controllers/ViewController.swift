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
    
    var randomManager = RandomBingoManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        reset()
        
    }
    
    func reset() {
        mainLabel.text = "선택하세요"
        numLabel.text = ""
        randomManager.resetNum()
    }

    @IBAction func numButton(_ sender: UIButton) {
        guard let strNum = sender.currentTitle else { return }
        numLabel.text = strNum
        
        guard let intNum = Int(strNum) else { return }
        randomManager.setUserNum(num: intNum)
    }
    
    @IBAction func selectButton(_ sender: UIButton) {
        guard let myNumStr = numLabel.text,
              let myNum = Int(myNumStr) else { return }
        
        randomManager.setUserNum(num: myNum)
        mainLabel.text = randomManager.getRandomResult()

    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        reset()
    }
    
}

