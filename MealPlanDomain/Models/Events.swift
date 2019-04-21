//
//  Events.swift
//  MealPlanDomain
//
//  Created by blakerogers on 2/28/19.
//  Copyright © 2019 blakerogers. All rights reserved.
//

import Foundation
public protocol EventType {
    var eventID: String {get set}
    var value: Double {get set}
    var date: TimeInterval {get set}
    var description: String { get set}
}
public struct EventUser {
    public let id: String
    public let imageURL: String
}
public struct DiningEvent: EventType {
    public var eventID: String
    public let venueID: String
    public var value: Double
    public var date: TimeInterval
    public var description: String
    public let user: EventUser
}
public struct TransferEvent: EventType {
    public var eventID: String
    public var value: Double
    public var date: TimeInterval
    public var description: String
    public let sender: EventUser
    public let receiver: EventUser
    public let senderStartingBalance: Double
    public let senderEndingBalance: Double
    public let receiverStartingBalance: Double
    public let receiverEndingBalance: Double
}
public struct ConversionEvent: EventType {
    public var eventID: String
    public var value: Double
    public var date: TimeInterval
    public var description: String
    let monetaryType: MonetaryType
}
