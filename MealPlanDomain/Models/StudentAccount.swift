//
//  StudentAccount.swift
//  MealPlanDomain
//
//  Created by blakerogers on 2/28/19.
//  Copyright © 2019 blakerogers. All rights reserved.
//

import Foundation
public struct StudentAccount {
    public let swipesBalance: SwipesBalance?
    public let flexBalance: FlexBalance?
}
extension StudentAccount {
    public static var empty: StudentAccount {
        return StudentAccount(swipesBalance: nil, flexBalance: nil)
    }
    public static var mock: StudentAccount {
        return StudentAccount(swipesBalance: SwipesBalance.mock, flexBalance: FlexBalance.mock)
    }
}
