//
//  Vehicles.swift
//  Audi
//
//  Created by Fagner Caetano on 03/08/20.
//

import UIKit

class Vehicles: NSObject {
    
    let model: String
    let picture: String
    let details: String
    
    init(model: String, picture: String, details: String) {
        self.model = model
        self.picture = picture
        self.details = details
    }

}
