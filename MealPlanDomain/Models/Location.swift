//
//  Location.swift
//  MealPlanDomain
//
//  Created by blakerogers on 2/28/19.
//  Copyright © 2019 blakerogers. All rights reserved.
//

import Foundation
public struct Location {
    let latitude: NSNumber
    let longitude: NSNumber
}
extension Location {
    static var empty: Location {
        return Location(latitude: 0, longitude: 0)
    }
}
