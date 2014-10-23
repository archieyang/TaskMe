//
//  TaskStore.swift
//  TaskMe
//
//  Created by archie on 14/10/23.
//  Copyright (c) 2014年 archie. All rights reserved.
//

import Foundation

class TaskStore {
    class var sharedInstance: TaskStore {
        struct Static {
            static let instance = TaskStore()
        }
        return Static.instance
    }
    
    var tasks: [Task] = []
    
    var count: Int {
        return tasks.count
    }
    
    func add(task: Task) {
        tasks.append(task)
    }
    
    func replace(task: Task, atIndex index: Int) {
        tasks[index] = task
    }
    
    func get(atIndex index: Int) -> Task {
        return tasks[index]
    }
    
    func remove(atIndex index: Int) {
        tasks.removeAtIndex(index)
    }
    
}