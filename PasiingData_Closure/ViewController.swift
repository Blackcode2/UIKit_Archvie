//
//  ViewController.swift
//  PassingDataWithClosure
//
//  Created by KimDogyung on 12/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Hello, World!"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let button:UIButton = {
        let config = UIButton.Configuration.filled()
        let button = UIButton(configuration: config)
        button.setTitle("Go to SV", for: .normal)
        button.addTarget(self, action: #selector(goToSecondViewController), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func goToSecondViewController() {
        let secondVC = SecondViewController()
        
        // Define the closure to handle the data
        secondVC.completionHandler = { [weak self] data in
            self?.label.text = data
        }
        
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        uiSetup()
    }
    
    func uiSetup() {
        view.addSubview(label)
        view.addSubview(button)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }


}

