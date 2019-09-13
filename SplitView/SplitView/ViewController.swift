//
//  ViewController.swift
//  SplitView
//
//  Created by Ufuk Köşker on 30.08.2019.
//  Copyright © 2019 Ufuk Köşker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var foundationYearLabel: UILabel!
    @IBOutlet weak var companyLogo: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var company: Company?{
        didSet {
            refreshUI() //company değişkeni her değiştiğinde refreshUI fonksiyonu tetiklenir.
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func refreshUI() {
        loadViewIfNeeded()
        companyNameLabel.text = company?.name
        foundationYearLabel.text = company?.foundationYear
        companyLogo.image = company?.logo
        descriptionLabel.text = company?.description
    }

}

