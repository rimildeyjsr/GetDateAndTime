//
//  ViewController.swift
//  GetDateAndTime
//
//  Created by Rimil Dey on 24/10/17.
//  Copyright © 2017 Rimil Dey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - view did load

    override func viewDidLoad() {
        super.viewDidLoad()
        refreshDate()
    }
    
    // MARK: - outlets
    @IBOutlet weak var dateLabel: UILabel!
    
    // MARK: - properties
    let dateFormatter = DateFormatter()
    
    
    // MARK: - interactions
    @IBAction func tapRefreshButton(_ sender: UIButton) {
        refreshDate()
    }
    
    // MARK: - functions
    func refreshDate() {
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        dateLabel.text = dateFormatter.string(from: Date())
    }
}

