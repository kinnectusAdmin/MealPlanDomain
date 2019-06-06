//
//  School.swift
//  MealPlanDomain
//
//  Created by blakerogers on 2/28/19.
//  Copyright © 2019 blakerogers. All rights reserved.
//

import Foundation
public struct School {
    public let id: String
    public let name: String
    public let address: String
    public let location: Location
}
extension School {
    public static var empty: School {
        return School(id: "", name: "", address: "", location: Location.empty)
    }
}
