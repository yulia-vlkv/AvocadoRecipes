//
//  HeaderModel.swift
//  Avocados
//
//  Created by Iuliia Volkova on 17.08.2022.
//

import SwiftUI

// MARK: - Header Model

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}


