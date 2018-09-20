//  UserDefaultsStorage.swift
//  Created by Vladimir Roganov on 02/08/2018.

import Foundation

public class UserDefaultsStorage {
    
    public class func isValue(_ value: String, containedIn: String) -> Bool {
        return get(list: containedIn).contains(value)
    }
    
    public class func add(value: String, toList: String, cap: Int = -1) {
        var list = self.get(list: toList)
        if list.contains(value) {
            return
        }
        list.append(value)
        if cap > 0 {
            while list.count > cap {
                list.removeFirst()
            }
        }
        UserDefaults.standard.set(list, forKey: toList)
    }
    
    public class func get(list: String) -> [String] {
        let array = UserDefaults.standard.array(forKey: list) as? [String]
        return array ?? []
    }
    
    public class func set(values: [String], toList: String) {
        UserDefaults.standard.set(values, forKey: toList)
    }
    
    public class func remove(value: String, fromList: String) {
        var list = self.get(list: fromList)
        guard let index = list.index(of: value) else {
            return
        }
        list.remove(at: index)
        UserDefaults.standard.set(list, forKey: fromList)
    }
}
