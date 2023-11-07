//
//  VideoModel.swift
//  Africa
//
//  Created by Ashish on 22/09/21.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
