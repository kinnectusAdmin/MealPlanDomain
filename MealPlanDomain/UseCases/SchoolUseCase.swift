//
//  SchoolUseCase.swift
//  MealPlanDomain
//
//  Created by blakerogers on 3/1/19.
//  Copyright © 2019 blakerogers. All rights reserved.
//

import Foundation
public protocol SchoolUseCase {
    func fetchAllSchools()
    func fetchSchool(id: String)
}
