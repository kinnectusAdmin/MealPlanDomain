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
    public static let defaultEvent = DiningEvent(event: "",
                                          venue: "",
                                          value: 20,
                                          date: Date().timeIntervalSince1970,
                                          description: "Dined somewhere Good",
                                          user: EventUser())
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
    public static let defaultEvent: TransferEvent = TransferEvent(eventID: "", value: 2, date: Date().timeIntervalSince1970, description: "Transferred 2 swipes to Michael", sender: EventUser(), receiver: EventUser(), senderStartingBalance: 5, senderEndingBalance: 7, receiverStartingBalance: 7, receiverEndingBalance: 5)
}
public struct ConversionEvent: EventType {
    public var eventID: String
    public var value: Double
    public var date: TimeInterval
    public var description: String
    public let monetaryType: MonetaryType
    public static let defaultEvent: ConversionEvent = ConversionEvent(eventID: "", value: 2, date: Date().timeIntervalSince1970, description: "Converted 2 swipes to flex", monetaryType: .swipes)
    public static let empty: ConversionEvent = ConversionEvent(eventID: "", value: 0, date: Date().timeIntervalSince1970, description: "", monetaryType: .swipes)
}
