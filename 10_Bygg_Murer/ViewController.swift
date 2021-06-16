//
//  ViewController.swift
//  10_Bygg_Murer
//
//  Created by Mariel Aulie Hinderaker on 15/06/2021.
//  Copyright © 2021 Mariel Aulie Hinderaker. All rights reserved.
//

import UIKit
import AVKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func murervideo(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "Murer", ofType: "mp4"){
        let video = AVPlayer(url: URL(fileURLWithPath: path))
        let videoPlayer = AVPlayerViewController()
        videoPlayer.player = video
                 
        present(videoPlayer, animated: true, completion:
            {
                video.play()
                
        })
             }
    }
    
}

