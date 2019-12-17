//
//  Compass.swift
//  Kroz-App-01
//
//  Created by Diane Hoffstetter on 12/17/19.
//  Copyright © 2019 Dumb Blonde Software. All rights reserved.
//

import Foundation

class Compass {

  var compassFull : [Direction : DirectionToDestination] = [
      Direction.north : DirectionToDestination(directionInfo: DirectionInfo(direction: .north), destinationId: nil),
      Direction.south : DirectionToDestination(directionInfo: DirectionInfo(direction: .south), destinationId: nil),
      Direction.east : DirectionToDestination(directionInfo: DirectionInfo(direction: .east), destinationId: nil),
      Direction.west : DirectionToDestination(directionInfo: DirectionInfo(direction: .west), destinationId: nil),
      Direction.up : DirectionToDestination(directionInfo: DirectionInfo(direction: .up), destinationId: nil),
      Direction.down : DirectionToDestination(directionInfo: DirectionInfo(direction: .down), destinationId: nil),
      Direction.teleport : DirectionToDestination(directionInfo: DirectionInfo(direction: .teleport), destinationId: nil) ]
  
  init(){
  }
  
  func updateDestinationId(for direction: Direction, newDestinationId: Int?) {
    
    if let dir = compassFull[direction]{ // Should exist but double check
      dir.destinationId = newDestinationId
    }
  }
  
  func setAllDestinationId(north: Int?, south: Int?, east: Int?, west: Int?, up: Int?, down: Int?, teleport: Int?){
    
    compassFull[.north]?.destinationId = north
    compassFull[.south]?.destinationId = south
    compassFull[.east]?.destinationId = east
    compassFull[.west]?.destinationId = west
    compassFull[.up]?.destinationId = up
    compassFull[.down]?.destinationId = down
    compassFull[.teleport]?.destinationId = teleport
  }
  
  func displayAllDestinationIds() {
    
    for dir in compassFull {
      if let id = dir.value.destinationId {
        print("\(dir.value.directionInfo.direction) : \(dir.value.directionInfo.directionName) : \(id)")
      }
      else {
        print("\(dir.value.directionInfo.direction) : \(dir.value.directionInfo.directionName) : nil")
      }
    }
  }
  
  func getIdforDirection(direction: Direction) -> Int? {
    if let dir = compassFull[direction]{ // Should exist but double check
      return dir.destinationId
    } else {
      return nil
    }
  }
  
}
