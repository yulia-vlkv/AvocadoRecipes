//
//  FactModel.swift
//  Avocados
//
//  Created by Iuliia Volkova on 18.08.2022.
//

import SwiftUI

// MARK: - Fact Model

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
