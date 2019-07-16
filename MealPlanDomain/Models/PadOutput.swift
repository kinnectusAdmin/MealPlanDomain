//
//  PadOutput.swift
//  MealPlanDomain
//
//  Created by blakerogers on 6/8/19.
//  Copyright © 2019 blakerogers. All rights reserved.
//

import Foundation
public enum PadOutput: String {
    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case backspace = "<"
    case none = ""
}
extension PadOutput {
    /// Provide String and int value provided input
    ///
    /// - Parameters:
    ///   - currentInput: String
    ///   - input: PadOutput
    /// - Returns: (String, Int))
    public static func outputFor(currentInput: String, input: PadOutput) -> String {
        switch input {
        case .backspace:
            let result = String(currentInput.dropLast()).replacingOccurrences(of: "0", with: "")
            let resultValue = result.isEmpty ? "0" : result
            return resultValue
        case .zero:
            let result = currentInput.appending(input.rawValue).replacingOccurrences(of: "00", with: "0")
            return result.isEmpty ? "0" : result
        default:
            let result = currentInput.appending(input.rawValue).replacingOccurrences(of: "0", with: "")
            return result.isEmpty ? "0" : result
        }
    }
}
