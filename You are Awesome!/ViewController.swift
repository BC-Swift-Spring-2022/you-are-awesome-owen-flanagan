//
//  ViewController.swift
//  You are Awesome!
//
//  Created by Owen Flanagan on 1/30/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    @IBAction func messageButtonPressed(_ sender: Any) {
        
        let messages = ["You are Awesome!",
                        "You are Great!",
                        "You are Fantastic!",
                        "When the Genius Bar Needs Help, They Call You!",
                        "Fabulous? That's You!",
                        "You've Got The Design Skills of Jony Ive"]
        
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        
        var newImageNumber: Int
        repeat{
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        }while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        if let sound = NSDataAsset(name: "sound0"){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }catch{
                print("😡 ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object.")
            }
        } else{
            print("😡 ERROR: Could not read data from file sound0")
        }
        
//        messageLabel.text = messages[messageNumber]
//        messageNumber += 1
//        if messageNumber == messages.count{
//            messageNumber = 0
//        }
        
//        print(imageNumber)
//        let imageName = "image\(imageNumber)"
//        imageView.image = UIImage(named: imageName)
//        imageNumber = imageNumber + 1
//        if imageNumber == 10{
//            imageNumber = 0
//        }
        
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
