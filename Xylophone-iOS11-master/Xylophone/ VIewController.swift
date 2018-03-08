//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    var selectedSoundFileName : String = ""
//    array of notes
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }


//    action button
    @IBAction func notePressed(_ sender: UIButton) {
        
//        takes tag from button and matches with note # in array
        selectedSoundFileNameTobie08131828= soundArray[sender.tag - 1]
        print(selectedSoundFileName)
        playsound()
        
    }
    
//    function to play sound files
    func playsound(){
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }

}

