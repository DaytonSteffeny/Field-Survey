//
//  FieldObservation.swift
//  Field Survey
//
//  Created by Dayton Steffeny on 4/6/18.
//  Copyright © 2018 Dayton Steffeny. All rights reserved.
//

import Foundation

struct FieldObservation {
    let field: Field
    let title: String
    let description: String
    let date: Date
    
    init(field: Field, title: String, description: String, date: Date){
        self.field = field
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(fieldName: String, title: String, description: String, date: Date){
        if let field = Field(rawValue: classification){
   self.init(field: field, title: title, description: description, date: date)
    } else {
    return nil
       }
    }
}
