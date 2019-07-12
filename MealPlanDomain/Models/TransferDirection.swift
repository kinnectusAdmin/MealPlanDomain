//
//  TransferDirection.swift
//  MealPlanDomain
//
//  Created by blakerogers on 6/8/19.
//  Copyright © 2019 blakerogers. All rights reserved.
//

import Foundation

public enum TransferMode {
    case requesting
    case sending
    public var alternate: TransferMode {
        switch self {
        case .requesting: return .sending
        case .sending: return .requesting
        }
    }
}
public enum TransferType {
    case swipes
    case flex
}
