//
//  DummyClass.swift
//  DoccFramework
//
//  Created by Paul Peelen on 2022-09-22.
//

import Foundation

/// This is just a dummy class called `DummyClass`
@objc
public class DummyClass: NSObject {
    
    /// The version number we have in this file
    public let versionNumber = "1.0.0"
    
    /// This is a stored string that should not end up in the documentation
    private var name: String = ""
    
    /// Use this method when you want to say hi to a name in the debug log
    /// - Parameters:
    ///   - name: The name to say Hi to
    ///   - shouldSayBye: Wether to say bye or not
    @objc
    public func sayHi(name: String, shouldSayBye: Bool = false) {
        self.name = name
        print("HI \(name)")
        
        if shouldSayBye {
            sayBye()
        }
    }
    
    /// This method is not exposed to objc. It will just post to the log that it is called 
    public func nonObjcMethod() {
        print("Called the nonObjcMethod")
    }
    
    /// This method should not end up in the documentation
    private func sayBye() {
        print("Bye \(name)")
    }
}
