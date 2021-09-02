//
//  SearchResult.swift
//  AmaranthineQueue
//
//  Created by Instructor Amaranthine on 02/09/21.
//

import Foundation

/**
 Search results for Queue
 
 *values*
 
 `elementNotFound`
 
 `elementFound`
 
 `empty`
 
 - Author: Arun Patwardhan
 - Version: 1.0
 - Date: 20th July 2019
 
 
 **Contact Details**
 
 [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
 
 [www.amaranthine.in](https://www.amaranthine.in)
 */
public enum SearchResult {
    case elementFound
    case empty
    case elementNotFound
}

extension SearchResult {
    /**
     This function returns a `String` version of the value.
     - returns: `String`
     - requires: iOS 11 or later
     - Since: iOS 11
     - author: Arun Patwardhan
     - copyright: Copyright (c) Amaranthine 2015 - version: 1.0
     */
    @available(iOS, introduced: 11.0, message: "String converter")
    public func toString() -> String {
        switch self {
            case .elementFound:
                return "ElementFound"
            case .elementNotFound:
                return "ElementNotFound"
            case .empty:
                return "Empty"
        }
    }
}
