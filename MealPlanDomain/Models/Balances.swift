//
//  Balances.swift
//  MealPlanDomain
//
//  Created by blakerogers on 2/28/19.
//  Copyright © 2019 blakerogers. All rights reserved.
//
import Foundation
public protocol Balance {
    var remaining: Double {get set}
    var spent: Double {get set}
    var received: Double { get set}
    var converted: Double {get set}
}
public struct SwipesBalance: Balance {
    public var remaining: Double
    public var spent: Double
    public var received: Double
    public let sent: Double
    public var converted: Double
}
public struct FlexBalance: Balance {
    public var remaining: Double
    public var spent: Double
    public var received: Double
    public var converted: Double
}
