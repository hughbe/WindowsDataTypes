//
//  reinterpret_cast.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

import Foundation

internal func reinterpret_cast<U, T>(_ value: U, to: T.Type) -> T {
    var data = value
    return withUnsafePointer(to: &data) {
        $0.withMemoryRebound(to: to, capacity: 1) {
            $0.pointee
        }
    }
}
