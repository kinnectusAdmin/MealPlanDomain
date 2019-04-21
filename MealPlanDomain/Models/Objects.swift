//
//  Objects.swift
//  MealPlan
//
//  Created by blakerogers on 3/7/19.
//  Copyright © 2019 blakerogers. All rights reserved.
//

import Foundation
public struct Objects {
    public enum OnboardPage: Int {
        case first = 0
        case second = 1
        case third = 2
        public var content: String {
            switch self {
            case .first: return "Lorem Ipsum 1"
            case .second: return "Lorem ipsum 2"
            case .third: return "Lorem ipsum 3"
            }
        }
        public var alternate: (previous: OnboardPage, next: OnboardPage) {
            switch self {
            case .first:
                return (.first, .second)
            case .second:
                return (.first, .third)
            case .third:
                return (.second, .third)
            }
        }
    }
    public enum BalanceTrendType {
        case conversion
        case sent
        case spent
        case received
    }
}
