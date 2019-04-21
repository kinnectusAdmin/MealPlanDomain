//
//  MealPlanUser.swift
//  MealPlanDomain
//
//  Created by blakerogers on 2/28/19.
//  Copyright © 2019 blakerogers. All rights reserved.
//

import Foundation
public struct MealPlanUser {
    public let firstName: String
    public let lastName: String
    public var name: String { return "\(firstName) \(lastName)" }
    public let email: String
    public let uid: String
    public let school: School
    public let mealPlan: MealPlan
    public let imageURL: String
    public let willReceiveNotifications: Bool
    public let phoneNumber: String
}
