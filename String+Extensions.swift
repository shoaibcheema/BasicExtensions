//
//  String+Extension.swift
//  Shoaib
//
//  Created by Shoaib Sarwar Cheema on 14/10/2015.
//  Copyright © 2015. All rights reserved.
//

import Foundation

extension String {
    
    mutating func removeAllSpaces() {
        replaceOccurrences(" ", withString: "")
    }
    var stringByRemovingExcessiveSpaces: String {
        let components = self.components(separatedBy: CharacterSet.whitespaces)
        let filtered = components.filter({!$0.isEmpty})
        return filtered.joined(separator: " ")
    }
    
    mutating func replaceOccurrences(_ target: String, withString: String)
    {
        self = replacingOccurrences(of: target, with: withString)
    }
    
    mutating func encodeForUrl() {
        self = self.addingPercentEncoding( withAllowedCharacters: CharacterSet.urlQueryAllowed)!
    }
    func encodedStringForUrl() -> String {
        let string = self
        return string.addingPercentEncoding( withAllowedCharacters: CharacterSet.urlQueryAllowed)!
    }
    
    func hasAnyPrefix(Prefixes prefixes: [String]) -> Bool{
        
        for prefix in prefixes{
            if self.hasPrefix(prefix){
                return true
            }
        }
        return false
    }
    
    static func randomStringWithLength (_ len : Int) -> String {
        
        let letters : NSString = "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let randomString : NSMutableString = NSMutableString(capacity: len)
        
        for _ in 1...(len-1) {
            let length = UInt32 (letters.length)
            let rand = arc4random_uniform(length)
            randomString.appendFormat("%C", letters.character(at: Int(rand)))
        }
        
        return randomString as String
    }
    
    func fromBase64() -> String? {
        guard let data = Data(base64Encoded: self) else {
            return nil
        }
        
        return String(data: data, encoding: .utf8)
    }
    
    func toBase64() -> String {
        return Data(self.utf8).base64EncodedString()
    }
}
