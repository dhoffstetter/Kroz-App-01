//
//  Map.swift
//  Kroz-App-01
//
//  Created by Diane Hoffstetter on 12/17/19.
//  Copyright © 2019 Dumb Blonde Software. All rights reserved.
//

import Foundation

class Map {
  
  var map: [Int: Location] = [:]
  static var currentId = 1
  
  init(){
    
    let room_001 = Location(name: "Room 1", descriptionShort: "Room 1 Short", descriptionLong: "Room 1 Long")
    let room_002 = Location(name: "Room 2", descriptionShort: "Room 2 Short", descriptionLong: "Room 2 Long")
    let room_003 = Location(name: "Room 3", descriptionShort: "Room 3 Short", descriptionLong: "Room 3 Long")
    let room_004 = Location(name: "Room 4", descriptionShort: "Room 4 Short", descriptionLong: "Room 4 Long")
    
    room_001.setAllDestinationIdsInCompass(north: nil, south: 3, east: 2, west: nil, up: nil, down: nil, teleport: nil)
    room_002.setAllDestinationIdsInCompass(north: nil, south: 4, east: nil, west: 1, up: nil, down: nil, teleport: nil)
    room_003.setAllDestinationIdsInCompass(north: 1, south: nil, east: 4, west: nil, up: nil, down: nil, teleport: nil)
    room_004.setAllDestinationIdsInCompass(north: 2, south: nil, east: nil, west: 3, up: nil, down: nil, teleport: nil)
    
    map[1] = room_001
    map[2] = room_002
    map[3] = room_003
    map[4] = room_004
  }
  
}
