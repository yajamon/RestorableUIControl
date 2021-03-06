//
//  Restoring.swift
//  RestorableUIControl
//
//  Created by yajamon on 2018/06/26.
//

import Foundation

public protocol Restoring {
    var defaultsKey: String {get set}
    
    func restoreByUserDefaults()
}

protocol RestoringInternal : Restoring {
    func saveToUserDefaults(_ sender:Self)
}
