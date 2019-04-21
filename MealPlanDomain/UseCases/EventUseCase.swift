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
}
