//
//  ViewController.swift
//  You are Awesome!
//
//  Created by Owen Flanagan on 1/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    @IBAction func messageButtonPressed(_ sender: Any) {
        
        print(imageNumber)
        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        imageNumber = imageNumber + 1
        if imageNumber == 10{
            imageNumber = 0
        }
        
//        let awesomeMessage = "You are Awesome!"
//        let greatMessage = "You are Great!"
//        let daBombMessage = "You are Da Bomb!"
//
//        if messageLabel.text == awesomeMessage{
//            messageLabel.text = greatMessage
//            imageView.image = UIImage(named: "image1")
//        }else if messageLabel.text == greatMessage{
//            messageLabel.text = daBombMessage
//            imageView.image = UIImage(named: "image2")
//        }else{
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage(named: "image0")
//        }
//
    }
}
