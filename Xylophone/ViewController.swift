//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        var name = sender.titleLabel?.text ?? ""
        playSound(name: name)
        sender.layer.opacity = 0.5
        UIView.animate(withDuration: 0.2, delay: 0.2, options: [], animations: {
                // Restore opacity to 1
                sender.layer.opacity = 1
            }, completion: nil)
        
        //opacity = 0.5
        //print(opacity)
        
        
    }
    
    func playSound(name:String){
        
        let url = Bundle.main.url(forResource: name, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    
    }
    

}

