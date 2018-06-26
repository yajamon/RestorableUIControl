//
//  RestorableSwitch.swift
//  RestorableUIControl
//
//  Created by yajamon on 2018/06/26.
//

import UIKit

public class RestorableSwitch: UISwitch, RestoringInternal {
    @IBInspectable public var defaultsKey: String = ""
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.addTarget(self, action: #selector(saveToUserDefaults(_:)), for: .valueChanged)
    }
    
    @objc func saveToUserDefaults(_ sender:RestorableSwitch) {
        // print("save to UserDefaults")
        guard defaultsKey != "" else { return }
        UserDefaults.standard.set(sender.isOn, forKey: defaultsKey)
        // Waits for any pending asynchronous updates to the defaults database and returns; this method is unnecessary and shouldn't be used.
        // UserDefaults.standard.synchronize()
        
        // print("save success")
    }
    
    public func restoreByUserDefaults() {
        guard defaultsKey != "" else { return }
        self.isOn = UserDefaults.standard.bool(forKey: defaultsKey)
    }
}

