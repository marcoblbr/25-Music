//
//  ViewController.swift
//  25 - Music
//
//  Created by Marco on 7/31/15.
//  Copyright (c) 2015 Marco. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player : AVAudioPlayer = AVAudioPlayer ()
    
    // volume vai de 0 a 1 (1 = 100%)
    @IBAction func sliderChangeValue(sender: UISlider) {
        player.volume = sender.value
    }
    
    @IBAction func buttonPause(sender: AnyObject) {
        player.pause()
    }

    @IBAction func buttonStop(sender: AnyObject) {
        player.stop()
        
        player.currentTime = 0
    }
    
    @IBAction func buttonPlay(sender: AnyObject) {
        player.play ()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var fileLocation =  NSBundle.mainBundle().URLForResource("bach1", withExtension: "mp3")!
        
        var error : NSError? = nil

        player = AVAudioPlayer (contentsOfURL: fileLocation, error: &error)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
