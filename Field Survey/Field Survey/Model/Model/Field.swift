//
//  Field.swift
//  Field Survey
//
//  Created by Dayton Steffeny on 4/6/18.
//  Copyright © 2018 Dayton Steffeny. All rights reserved.
//

import UIKit

enum Field: String {
    case Amphibian
    case Bird
    case Fish
    case Insect
    case Mammal
    case Plant
    case Reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
