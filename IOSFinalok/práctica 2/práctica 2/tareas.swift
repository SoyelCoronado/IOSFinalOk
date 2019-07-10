//
//  tareas.swift
//  práctica 2
//
//  Created by alejandro Coronado on 7/7/19.
//  Copyright © 2019 MTI CUCEA. All rights reserved.
//

import Foundation

class TaskModel {
    var id: Int = 0
    var task: String
    var dueDate: Date
    
    init (task: String, dueDate: Date){
        self.task = task
        self.dueDate = dueDate
    }
}
