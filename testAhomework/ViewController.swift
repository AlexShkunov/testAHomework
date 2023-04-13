//
//  ViewController.swift
//  testAhomework
//
//  Created by Alex Shkunov on 4/13/23.
//

import UIKit

class ViewController: UIViewController {

    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }
    
    private func layout() {
        view.addSubview(redView)
        
        NSLayoutConstraint.activate([
            // redView
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            redView.heightAnchor.constraint(equalToConstant: 250)
        ])
    }
}
            

