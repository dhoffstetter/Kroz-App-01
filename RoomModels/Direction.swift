//
//  Direction.swift
//  Kroz-App-01
//
//  Created by Diane Hoffstetter on 12/17/19.
//  Copyright © 2019 Dumb Blonde Software. All rights reserved.
//

import Foundation

enum Direction: String {
  case north, south, east, west, up, down, teleport
  
  var name: String {
    "\(rawValue.capitalizingFirstLetter())"
  }
}
