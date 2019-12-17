//
//  DirectionToDestination.swift
//  Kroz-App-01
//
//  Created by Diane Hoffstetter on 12/17/19.
//  Copyright © 2019 Dumb Blonde Software. All rights reserved.
//

import Foundation

class DirectionToDestination {
  
  let directionInfo: DirectionInfo
  var destinationId: Int?
  
  init(directionInfo: DirectionInfo, destinationId: Int?) {
    
    self.directionInfo = directionInfo
    self.destinationId = destinationId
  }
}
