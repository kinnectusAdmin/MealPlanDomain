//
//  StudentAccountUseCase.swift
//  MealPlanDomain
//
//  Created by blakerogers on 3/1/19.
//  Copyright © 2019 blakerogers. All rights reserved.
//

import Foundation
public protocol StudentAccountUseCase {
    /// Provides user account info from university database
    ///
    /// - Parameter id: String
    func fetchStudentAccount(id: String)
}
