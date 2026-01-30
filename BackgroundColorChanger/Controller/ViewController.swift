//
//  ViewController.swift
//  BackgroundColorChanger
//
//  Created by Parthiv Ganguly on 1/30/26.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    private var redButton: UIButton?
    private var orangeButton: UIButton?
    private var blueButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpHomeScreen()
    }
    
    // MARK: Set Up Home Screen
    
    private func setUpHomeScreen() {
        orangeButton = UIButton()
        orangeButton?.backgroundColor = .orange
        orangeButton?.titleLabel?.textColor = .white
        orangeButton?.setTitle("Orange", for: .normal)
        orangeButton?.translatesAutoresizingMaskIntoConstraints = false
        
        orangeButton?.addAction(UIAction {_ in
            self.changeBackgroundColor(color: .orange)
        }, for: .touchUpInside)
        
        redButton = UIButton()
        redButton?.backgroundColor = .red
        redButton?.titleLabel?.textColor = .white
        redButton?.setTitle("Red", for: .normal)
        redButton?.translatesAutoresizingMaskIntoConstraints = false
        
        redButton?.addAction(UIAction {_ in
            self.changeBackgroundColor(color: .red)
        }, for: .touchUpInside)
        
        blueButton = UIButton()
        blueButton?.backgroundColor = .blue
        blueButton?.titleLabel?.textColor = .white
        blueButton?.setTitle("Blue", for: .normal)
        blueButton?.translatesAutoresizingMaskIntoConstraints = false
        
        blueButton?.addAction(UIAction {_ in
            self.changeBackgroundColor(color: .blue)
        }, for: .touchUpInside)
        
        if let redButton = redButton, let orangeButton = orangeButton, let blueButton = blueButton {
            view.addSubview(orangeButton)
            
            NSLayoutConstraint.activate([
                orangeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
                orangeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                orangeButton.widthAnchor.constraint(equalToConstant: ConstraintConstants.buttonWidth.rawValue)
            ])
            
            view.addSubview(redButton)
            
            NSLayoutConstraint.activate([
                redButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
                redButton.trailingAnchor.constraint(equalTo: orangeButton.leadingAnchor, constant: -10),
                redButton.widthAnchor.constraint(equalToConstant: ConstraintConstants.buttonWidth.rawValue)
            ])
            
            view.addSubview(blueButton)
            
            NSLayoutConstraint.activate([
                blueButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
                blueButton.leadingAnchor.constraint(equalTo: orangeButton.trailingAnchor, constant: 10),
                blueButton.widthAnchor.constraint(equalToConstant: ConstraintConstants.buttonWidth.rawValue)
            ])
        }
    }
}

