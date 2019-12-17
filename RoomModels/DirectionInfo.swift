//
//  DirectionInfo.swift
//  Kroz-App-01
//
//  Created by Diane Hoffstetter on 12/17/19.
//  Copyright © 2019 Dumb Blonde Software. All rights reserved.
//

import Foundation

class DirectionInfo {
  
  let direction: Direction
  let directionName: String
    
  init(direction: Direction) {
    self.direction = direction
    self.directionName = direction.name
  }
  
  // Use this init for name String different than emun value
  init(direction: Direction, directionName:String) {
    self.direction = direction
    self.directionName = directionName
  }
}
