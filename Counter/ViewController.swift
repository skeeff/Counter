//
//  ViewController.swift
//  Counter
//
//  Created by Федор Чистовский on 16.09.2024.
//

import UIKit

class ViewController: UIViewController {
    private var count: Int = 0
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var counterButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var changeList: UITextView!
    @IBOutlet weak var counterButtonMinus: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func counterButtonPressed(_ sender: Any) {
        count += 1
        counterLabel.text = "Counter value:" + String(count)
        changeList.text += "\(Date.now) value changed +1 \n"
    }
    
    @IBAction func counterButtonMinusPressed(_ sender: Any) {
        if count > 0 {
            count -= 1
            counterLabel.text = "Counter value:" + String(count)
        }else{
            count = 0
            counterLabel.text = "Counter value:" + String(count)
            changeList.text += "\(Date.now) attempt to decrease the counter value below 0 \n"
        }
        changeList.text += "\(Date.now) value changed -1 \n"
    }
    @IBAction func resetButtonPressed(_ sender: Any) {
        count = 0
        counterLabel.text = "Counter value:" + String(count)
        changeList.text += "\(Date.now) reset value \n"
    }
}

