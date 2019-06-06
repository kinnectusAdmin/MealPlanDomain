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
    var eventKind: EventKind? { get }
}
extension EventType {
    public var eventKind: EventKind? {
        switch (self is DiningEvent, self is TransferEvent, self is ConversionEvent) {
        case (true, _, _):
            return .dining
        case (_, true, _):
            return .transfer
        case (_, _, true):
            return .conversion
        default:
            return nil
        }
    }
}
public enum EventKind {
    case dining
    case transfer
    case conversion
}
public struct EventUser {
    public let id: String
    public let imageURL: String
    public init() {
        id = ""
        imageURL = ""
    }
}
public struct DiningEvent: EventType {
    public var eventID: String
    public let venueID: String
    public var value: Double
    public var date: TimeInterval
    public var description: String
    public let user: EventUser
    public init(event: String = "", venue: String = "", value: Double = 0, date: TimeInterval = Date().timeIntervalSince1970, description: String = "", user: EventUser = EventUser()) {
        eventID = event
        venueID = venue
        self.value = value
        self.date = date
        self.description = description
        self.user = user
    }
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
    public let monetaryType: MonetaryType
}
