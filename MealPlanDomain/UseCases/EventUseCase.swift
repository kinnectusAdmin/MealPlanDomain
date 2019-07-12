//
//  EventUseCase.swift
//  MealPlanDomain
//
//  Created by blakerogers on 3/1/19.
//  Copyright © 2019 blakerogers. All rights reserved.
//

import Foundation
public protocol EventUseCase {
    /// Provides user dining events stored in university database
    ///
    /// - Parameter userID: String
    func fetchDiningEvents(userID: String)
    /// Provieds user transfer events stored in university database
    ///
    /// - Parameter userID: String
    func fetchTransferEvents(userID: String)
    /// Provides user conversion events stored in university database
    ///
    /// - Parameter userID: String
    func fetchConversionEvents(userID: String)
    /// Creates and stores a user transfer event and returns result
    ///
    /// - Parameter transfer: TransferEvent
    func recordTransfer(transfer: TransferEvent)
    /// Create and store a user to user conversion event and returns result
    ///
    /// - Parameter conversion: ConversionEvent
    func recordConversion(conversion: ConversionEvent)

}
