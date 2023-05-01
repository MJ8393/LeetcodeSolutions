//
//  main.swift
//  LeetcodeSolutions
//
//  Created by Mekhriddin Jumaev on 11/02/23.
//

import Foundation

enum ValidationError: Error {
    case invalidPassword
}

func validatePassword(pass: String) throws -> String {
    if pass.count < 5 {
        throw ValidationError.invalidPassword
    }
    return pass
}
do {
    try validatePassword(pass: "ass")
} catch {
    print("xxxx")
}

