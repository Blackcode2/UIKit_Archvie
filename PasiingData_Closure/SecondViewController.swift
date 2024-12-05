//
//  SecondViewController.swift
//  PassingDataWithClosure
//
//  Created by KimDogyung on 12/1/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    // Closure property to pass data back
    var completionHandler: ((String) -> Void)?
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Second View"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let backButton: UIButton = {
        let config = UIButton.Configuration.filled()
        let button = UIButton(configuration: config)
        button.setTitle("Go Back", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupUI()
        
        // Add action for back button
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
    }
    
    @objc private func backButtonTapped() {
        // Pass data back using the closure
        completionHandler?("This is data from Second ViewController")
        navigationController?.popViewController(animated: true)
    }
    
    private func setupUI() {
        view.addSubview(label)
        view.addSubview(backButton)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
            
            backButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}
