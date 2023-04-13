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
    
    private let blueView: UIView = {
        $0.backgroundColor = .blue
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    private let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let greenView: UIView = {
        $0.backgroundColor = .green
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }
    
    private func layout() {
        view.addSubview(redView)
        view.addSubview(blueView)
        view.addSubview(yellowView)
        view.addSubview(greenView)
        
        NSLayoutConstraint.activate([
            // redView
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            redView.heightAnchor.constraint(equalToConstant: 150),
            
            // blueView
            blueView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 20),
            blueView.leadingAnchor.constraint(equalTo: redView.leadingAnchor),
            blueView.trailingAnchor.constraint(equalTo: redView.trailingAnchor),
            blueView.heightAnchor.constraint(equalToConstant: 150),
            
            //yellowView
            yellowView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 20),
            yellowView.leadingAnchor.constraint(equalTo: blueView.leadingAnchor),
            yellowView.trailingAnchor.constraint(equalTo: blueView.trailingAnchor),
            yellowView.heightAnchor.constraint(equalToConstant: 150),
            
            //greenView
            greenView.topAnchor.constraint(equalTo: yellowView.bottomAnchor, constant: 20),
            greenView.leadingAnchor.constraint(equalTo: yellowView.leadingAnchor),
            greenView.trailingAnchor.constraint(equalTo: yellowView.trailingAnchor),
            greenView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
            

