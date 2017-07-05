//
//  bai5.swift
//  LeHongPhong_14110409_bai2
//
//  Created by PhongLe on 7/5/17.
//  Copyright © 2017 PhongLe. All rights reserved.
//

import Foundation

protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName = ""
    
    var age: Int
}

class XYZ: FullyNamed {
    
    var prefix: String?
    var name: String
    
    //DI
    init(prefix: String, name: String) {
        self.prefix = prefix
        self.name = name
    }
    var fullName: String {
        get {
            if (prefix?.isEmpty)! {
                return prefix! + " " + name
            }else{
                return name
            }
        }
    }
    
}
