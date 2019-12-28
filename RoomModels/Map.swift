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
  static var currentId = 11
  
  init(){
    
//    let room_001 = Location(name: "Room 1", descriptionShort: "Room 1 Short", descriptionLong: "Room 1 Long")
//    let room_002 = Location(name: "Room 2", descriptionShort: "Room 2 Short", descriptionLong: "Room 2 Long")
//    let room_003 = Location(name: "Room 3", descriptionShort: "Room 3 Short", descriptionLong: "Room 3 Long")
//    let room_004 = Location(name: "Room 4", descriptionShort: "Room 4 Short", descriptionLong: "Room 4 Long")
//
//    room_001.setAllDestinationIdsInCompass(north: nil, south: 3, east: 2, west: nil, up: nil, down: nil, teleport: nil)
//    room_002.setAllDestinationIdsInCompass(north: nil, south: 4, east: nil, west: 1, up: nil, down: nil, teleport: nil)
//    room_003.setAllDestinationIdsInCompass(north: 1, south: nil, east: 4, west: nil, up: nil, down: nil, teleport: nil)
//    room_004.setAllDestinationIdsInCompass(north: 2, south: nil, east: nil, west: 3, up: nil, down: nil, teleport: nil)
//
//    map[1] = room_001
//    map[2] = room_002
//    map[3] = room_003
//    map[4] = room_004
    
    // Room numbers are X/Y coordinates.  Room 11 is in SW corner
    
    let room_11 = Location(name: "Room 11", descriptionShort: "Room 11 Short", descriptionLong: "Room 11 Long")
    let room_12 = Location(name: "Room 12", descriptionShort: "Room 12 Short", descriptionLong: "Room 12 Long")
    let room_13 = Location(name: "Room 13", descriptionShort: "Room 13 Short", descriptionLong: "Room 13 Long")
    let room_14 = Location(name: "Room 14", descriptionShort: "Room 14 Short", descriptionLong: "Room 14 Long")

    let room_21 = Location(name: "Room 21", descriptionShort: "Room 21 Short", descriptionLong: "Room 21 Long")
    let room_22 = Location(name: "Room 22", descriptionShort: "Room 22 Short", descriptionLong: "Room 22 Long")
    let room_23 = Location(name: "Room 23", descriptionShort: "Room 23 Short", descriptionLong: "Room 23 Long")
    let room_24 = Location(name: "Room 24", descriptionShort: "Room 24 Short", descriptionLong: "Room 24 Long")

    let room_31 = Location(name: "Room 31", descriptionShort: "Room 31 Short", descriptionLong: "Room 31 Long")
    let room_32 = Location(name: "Room 32", descriptionShort: "Room 32 Short", descriptionLong: "Room 32 Long")
    let room_33 = Location(name: "Room 33", descriptionShort: "Room 33 Short", descriptionLong: "Room 33 Long")
    let room_34 = Location(name: "Room 34", descriptionShort: "Room 34 Short", descriptionLong: "Room 34 Long")

    let room_41 = Location(name: "Room 41", descriptionShort: "Room 41 Short", descriptionLong: "Room 41 Long")
    let room_42 = Location(name: "Room 42", descriptionShort: "Room 42 Short", descriptionLong: "Room 42 Long")
    let room_43 = Location(name: "Room 43", descriptionShort: "Room 43 Short", descriptionLong: "Room 43 Long")
    let room_44 = Location(name: "Room 44", descriptionShort: "Room 44 Short", descriptionLong: "Room 44 Long")
    
    room_11.setAllDestinationIdsInCompass(north:  12, south: nil, east:  21, west: nil, up: nil, down: nil, teleport: nil)
    room_12.setAllDestinationIdsInCompass(north:  13, south:  11, east:  22, west: nil, up: nil, down: nil, teleport: nil)
    room_13.setAllDestinationIdsInCompass(north:  14, south:  12, east:  23, west: nil, up: nil, down: nil, teleport: nil)
    room_14.setAllDestinationIdsInCompass(north: nil, south:  13, east:  24, west: nil, up: nil, down: nil, teleport: nil)

    room_21.setAllDestinationIdsInCompass(north:  22, south: nil, east:  31, west:  11, up: nil, down: nil, teleport: nil)
    room_22.setAllDestinationIdsInCompass(north:  23, south:  21, east:  32, west:  12, up: nil, down: nil, teleport: nil)
    room_23.setAllDestinationIdsInCompass(north:  24, south:  22, east:  33, west:  13, up: nil, down: nil, teleport: nil)
    room_24.setAllDestinationIdsInCompass(north: nil, south:  23, east:  34, west:  14, up: nil, down: nil, teleport: nil)

    room_31.setAllDestinationIdsInCompass(north:  32, south: nil, east:  41, west:  21, up: nil, down: nil, teleport: nil)
    room_32.setAllDestinationIdsInCompass(north:  33, south:  31, east:  42, west:  22, up: nil, down: nil, teleport: nil)
    room_33.setAllDestinationIdsInCompass(north:  34, south:  32, east:  43, west:  23, up: nil, down: nil, teleport: nil)
    room_34.setAllDestinationIdsInCompass(north: nil, south:  33, east:  44, west:  24, up: nil, down: nil, teleport: nil)

    room_41.setAllDestinationIdsInCompass(north:  42, south: nil, east: nil, west:  31, up: nil, down: nil, teleport: nil)
    room_42.setAllDestinationIdsInCompass(north:  43, south:  41, east: nil, west:  32, up: nil, down: nil, teleport: nil)
    room_43.setAllDestinationIdsInCompass(north:  44, south:  42, east: nil, west:  33, up: nil, down: nil, teleport: nil)
    room_44.setAllDestinationIdsInCompass(north: nil, south:  43, east: nil, west:  34, up: nil, down: nil, teleport: nil)
    
    map[11] = room_11
    map[12] = room_12
    map[13] = room_13
    map[14] = room_14
    map[21] = room_21
    map[22] = room_22
    map[23] = room_23
    map[24] = room_24
    map[31] = room_31
    map[32] = room_32
    map[33] = room_33
    map[34] = room_34
    map[41] = room_41
    map[42] = room_42
    map[43] = room_43
    map[44] = room_44
  }
  
  func getCompassForCurrentId(roomId: Int) -> Compass? {
    
    if let room = self.map[roomId] {
      return room.getCompass()
    } else {
      return nil
    }
  }
  
  func getRoomIdForCurrentId(roomId: Int, direction: Direction) -> Int?{
    
    if let room = self.map[roomId] {
      return room.getIdforDirection(direction: direction)
    } else {
      return nil
    }
  }
  
}
