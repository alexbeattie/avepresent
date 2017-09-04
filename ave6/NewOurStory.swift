//
//  NewOurStory.swift
//  ave6
//
//  Created by Alex Beattie on 9/2/17.
//  Copyright © 2017 Artisan Branding. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class NewOurStory: UIViewController {

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var textView: UITextView!
//    var movieList:[PFObject] = []
    
    var player:AVPlayer!
    var playerLayer:AVPlayerLayer!
    @IBOutlet weak var playBtn: UIButton!

    var imageView2 = UIImageView(frame: CGRect(x: 0, y: 0, width: 22, height: 22))
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.textContainerInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        imageView2.contentMode = .scaleAspectFit
        let image = UIImage(named: "avenuelogotype")
        imageView2.image = image
        navigationItem.titleView = imageView2
//        playVideo(self)
//        playVideo()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playVideo(_ sender: Any) {
        playVideo()
    }
    
//    private func playVideo() {
//        guard let path = Bundle.main.path(forResource: "avenue-properties", ofType:"mp4") else {
//            debugPrint("video.m4v not found")
//            return
//        }
//        let player = AVPlayer(url: URL(fileURLWithPath: path))
//        let playerController = AVPlayerViewController()
//        playerController.player = player
//        present(playerController, animated: true) {
//            player.play()
//        }
//    }
    
    
    func playVideo() {
        
//        startActivityIndicator()
        guard let path = Bundle.main.path(forResource: "avenue-properties", ofType:"mp4") else {
                    debugPrint("video.m4v not found")
                    return
                }
        let documentsFolder = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        let videoURL = documentsFolder.appendingPathComponent("avenue-properties.mp4")

        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        
        present(playerController, animated: true) {
                        player.play()
            //        }
        }
    
    }

}
