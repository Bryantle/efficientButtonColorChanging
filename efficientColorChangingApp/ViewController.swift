//
//  ViewController.swift
//  efficientColorChangingApp
//
//  Created by mac on 1/13/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var colorList: Array = [ #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), #colorLiteral(red: 0.9686274529, green: 0.9223954645, blue: 0.05355838877, alpha: 1), #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)]
    var countButton = 0{
        didSet{
            numberLabel.text = "\(countButton)"
        }
    }
    @IBOutlet var buttonsList: [UIButton]!
    @IBOutlet weak var numberLabel: UILabel!
    @IBAction func resetButton(_ sender: UIButton) {
        countButton = 0
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        for i in buttonsList{
            i.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        for i in buttonsList{
            if i == sender{
                let indexNumber = buttonsList.index(of:sender)!
                if sender.backgroundColor == colorList[indexNumber]{
                    sender.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                    countButton -= 1}
            else{
        
                    sender.backgroundColor = colorList[indexNumber]
                    countButton += 1}
                }
                
            }
        }

    }
    

