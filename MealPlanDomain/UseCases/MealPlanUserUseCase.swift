//
//  MealPlanUserUseCase.swift
//  MealPlanDomain
//
//  Created by blakerogers on 3/1/19.
//  Copyright © 2019 blakerogers. All rights reserved.
//

import Foundation
public protocol MealPlanUserUseCase: class {
    /// Gets all users from database
    func fetchAllUsers()
    /// Gets a specific user from database
    ///
    /// - Parameter id: String
    func fetchUser(id: String)
    /// Creates a user returns result of success or failure via a listener
    ///
    /// - Parameter user: MealPlanUser
    func createUser(user: MealPlanUser)
    /// Updates users info on database
    ///
    /// - Parameter user: MealPlanUser
    func updateUser(user: MealPlanUser)
}
