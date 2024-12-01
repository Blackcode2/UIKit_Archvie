//
//  SecondViewController.swift
//  PassingDataWithClosure
//
//  Created by KimDogyung on 12/1/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Second View"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
      
        uiSetup()
    }
    
    func uiSetup() {
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
