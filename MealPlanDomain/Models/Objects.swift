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
    public enum NavigationPage: Int {
        case mainView = 0
        case conversion = 1
        case transfer = 2
        case menu = 3
        public var id: String {
            switch self {
            case .mainView:
                return "MainFeedView"
            case .transfer:
                return "TransferView"
            case .conversion:
                return "ConversionView"
            case .menu:
                return "MenuView"
            }
        }
        public func isAfter(_ page: NavigationPage) -> Bool {
            return rawValue > page.rawValue
        }
    }
    public enum Coordinators {
        case onboard
        case login
        case createAccount
        case mainNavigation
        public func identifier() -> String {
            switch self {
            case .onboard:
               return "OnboardCoordinator"
            case .login:
                return "LoginCoordinator"
            case .createAccount:
                return "CreateAccountCoordinator"
            case .mainNavigation:
                return "MainNavigationCoordinator"
            }
        }
    }
    public enum StudentAccountSignUpState {
        case signUpSucceeded(StudentAccount)
        case signUpFailure
        case loading
        case none
    }
    public enum UserLoginState {
        case loginSucceeded(MealPlanUser)
        case loginFailure
        case loading
        case none
    }
    public enum AlertState {
        case notDisplayed
        case alert(message: String)
        case dismiss
    }
}
