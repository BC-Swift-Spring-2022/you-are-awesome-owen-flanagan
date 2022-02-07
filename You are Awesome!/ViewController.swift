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
    var soundNumber = -1
    let totalNumberOfImages = 10
    let totalNumberOfSounds = 6
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    
    func playSound(name: String){
        if let sound = NSDataAsset(name: name){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }catch{
                print("😡 ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object.")
            }
        } else{
            print("😡 ERROR: Could not read data from file sound0")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperBounds: Int) -> Int{
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0..<upperBounds)
        } while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func messageButtonPressed(_ sender: Any) {
        
        let messages = ["You are Awesome!",
                        "You are Great!",
                        "You are Fantastic!",
                        "When the Genius Bar Needs Help, They Call You!",
                        "Fabulous? That's You!",
                        "You've Got The Design Skills of Jony Ive"]
        
    
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count)
        messageLabel.text = messages[messageNumber]
        
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalNumberOfImages)
        imageView.image = UIImage(named: "image\(imageNumber)")
        

        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: totalNumberOfSounds)
        playSound(name: "sound\(soundNumber)")
        
        
        
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
