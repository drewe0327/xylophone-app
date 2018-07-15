//
//  ViewController.swift
//  Xylophone
//
// 
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
  
    var player: AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        guard let url = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav") else { return }
        
        do {
//          
            player = try AVAudioPlayer(contentsOf: url)
            
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
    
        }

 }
}
