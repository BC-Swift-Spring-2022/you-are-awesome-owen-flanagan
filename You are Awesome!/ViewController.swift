//
//  ViewController.swift
//  You are Awesome!
//
//  Created by Owen Flanagan on 1/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍🏼 viewDidLoad has run!")
        messageLabel.text = "Fabulous? That's You!"
    }

    @IBAction func messageButtonPressed(_ sender: Any) {
        print("😎 The message button was pressed!")
        messageLabel.text = "You are Awesome!"
    }
    
}

