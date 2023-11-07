//
//  Utility.swift
//  Africa
//
//  Created by Ashish on 22/09/21.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fineExtension: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fineExtension) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fineExtension)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
