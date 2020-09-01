//
//  Album.swift
//  SampleApp
//
//  Created by Saba Toosi on 9/1/20.
//  Copyright © 2020 Saba Shaarbaftoosi. All rights reserved.
//

import Foundation
import UIKit

struct Album: Codable {
    var albumName: String?
    var artist: String?
    var albumArt: Data
    var genre: Genre?
    var releaseDate: String?
    var copyrightInfo: String?
}




