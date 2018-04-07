//
//  FieldsJSONLoader.swift
//  Field Survey
//
//  Created by Dayton Steffeny on 4/6/18.
//  Copyright © 2018 Dayton Steffeny. All rights reserved.
//

import Foundation

class FieldsJSONLoader {
    
    class func load(fileName: String) -> [FieldObservation]{
    var classification = [FieldObservation]()
    
       if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            classification = FieldObservationJSONParser.parse(data)
            }
        
        return classification
        }
}
