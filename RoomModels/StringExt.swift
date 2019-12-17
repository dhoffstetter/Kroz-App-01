//
//  StringExt.swift
//  Kroz-App-01
//
//  Created by Diane Hoffstetter on 12/17/19.
//  Copyright © 2019 Dumb Blonde Software. All rights reserved.
//

import Foundation

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
