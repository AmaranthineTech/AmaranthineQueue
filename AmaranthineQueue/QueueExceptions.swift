//
//  QueueExceptions.swift
//  AmaranthineQueue
//
//  Created by Instructor Amaranthine on 02/09/21.
//

import Foundation

/**
 Exceptions for Queue
 
 *values*
 __________
 `elementNotFound(String)`
 
 Thrown when the element being searched is not present
 
 `empty(String)`
 
 Thrown when an action is being performed on an empty queue.
 
 `indexOutOfBounds(String)`
 
 Thrown when attempting to access queue item beyond the allowed capacity.
 
 `queueFull(String)`
 
 Thrown when attempting to add an item to a queue that has reached its maximum limit
 
 
 **Variables**
 __________
 `description`
 
 Returs a  string decription of the value.
 - Author: Arun Patwardhan
 - Version: 1.0
 */
public enum QueueExceptions : Error {
    case elementNotFound(String)
    case empty(String)
    case indexOutOfBounds(String)
    case queueFull(String)
}

extension QueueExceptions : CustomStringConvertible {
    public var description: String {
        var returnStr : String = ""
        switch self {
            case .elementNotFound(let str):
                returnStr = "Element not found: \(str)"
            case .empty(let str):
                returnStr = "Empty: \(str)"
            case .indexOutOfBounds(let str):
                returnStr = "Index out of bounds: \(str)"
            case .queueFull(let str):
                returnStr = "Queue full: \(str)"
        }
        return returnStr
    }
}
