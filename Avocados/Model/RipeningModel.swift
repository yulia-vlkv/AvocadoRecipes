//
//  RipeningModel.swift
//  Avocados
//
//  Created by Iuliia Volkova on 18.08.2022.
//

import SwiftUI

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}

