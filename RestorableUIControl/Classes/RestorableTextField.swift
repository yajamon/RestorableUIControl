//
//  RestorableTextField.swift
//  RestorableUIControl
//
//  Created by yajamon on 2018/06/26.
//

import UIKit

public class RestorableTextField: UITextField, Restoring {
    @IBInspectable public var defaultsKey: String = ""
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.addTarget(self, action: #selector(saveToUserDefaults(_:)), for: .editingDidEnd)
    }
    
    @objc public func saveToUserDefaults(_ sender:RestorableTextField) {
        // print("save to UserDefaults")
        guard defaultsKey != "" else { return }
        UserDefaults.standard.set(sender.text ?? "", forKey: defaultsKey)
        // Waits for any pending asynchronous updates to the defaults database and returns; this method is unnecessary and shouldn't be used.
        // UserDefaults.standard.synchronize()
        
        // print("save success")
    }
    
    public func restoreByUserDefaults() {
        guard defaultsKey != "" else { return }
        guard let text = UserDefaults.standard.string(forKey: defaultsKey) else { return }
        guard text != "" else { return }
        
        self.text = text
    }
}

