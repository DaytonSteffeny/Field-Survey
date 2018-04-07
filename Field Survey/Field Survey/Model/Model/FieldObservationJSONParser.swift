//
//  FieldObservationJSONParser.swift
//  Field Survey
//
//  Created by Dayton Steffeny on 4/6/18.
//  Copyright © 2018 Dayton Steffeny. All rights reserved.
//

import Foundation

class FieldObservationJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [FieldObservation] {
        var fieldObservation = [FieldObservation]()
        dateFormatter.dateFormat = "YYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            
            if let observations = root["observations"] as? [Any] {
                for observation in observations {
                    if let observation = observation as? [String: String] {
                        if let classificationName = observation["classification"],
                            let title = observation["title"],
                            let descriptionString = observation["description"],
                            let dateString = observation["data"],
                            let date = dateFormatter.date(from: dateString) {
                            
                            if let fieldObservation = FieldObservation(fieldName: classificationName,title: descriptionString, date: date) {
                                FieldObservation.append(fieldObservation)
                            }
                        }
                    
                    }
                }
            }
            
        }
        
        return fieldObservation
    }
}
