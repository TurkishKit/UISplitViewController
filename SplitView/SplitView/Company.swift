//
//  Company.swift
//  SplitView
//
//  Created by Ufuk Köşker on 30.08.2019.
//  Copyright © 2019 Ufuk Köşker. All rights reserved.
//

import UIKit
class Company {
    
    var name: String?
    var foundationYear: String?
    var logo: UIImage?
    var description: String?
    
    init(name: String?, foundationYear: String?, logo: UIImage?, description: String?) {
        self.name = name
        self.foundationYear = foundationYear
        self.logo = logo
        self.description = description
    }
}
