//
//  ViewController.swift
//  ButtonsAndStacks
//
//  Created by Connor on 1/25/20.
//  Copyright © 2020 Connor Sullivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorLabel: UILabel!
    
    var colors: [UIColor] = [.red,.orange,.yellow,.green,.blue,.systemIndigo,.systemPurple]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func colorButtonPressed(_ sender: UIButton) {
        print("You clicked tag # \(sender.tag)")
        
        if sender.tag >= 0 && sender.tag <= 6 {
            colorLabel.text = "You Clicked \(sender.currentTitle!)"
            colorLabel.textColor = colors[sender.tag]
        } else {
            colorLabel.text = ""
        }
        
//        if sender.tag == 1000 {
//                        colorLabel.text = ""
//        } else {
//            colorLabel.text = "You Clicked \(sender.currentTitle!)"
//            colorLabel.textColor = colors[sender.tag]
//        }
    }
    
}

