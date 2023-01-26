//
//  SignUpViewController.swift
//  AmazonPrime-Clone
//
//  Created by Rohit Sharma on 22/01/23.
//

import UIKit

class SignUpViewController: UIViewController {
    
    private var stackView : UIStackView = {
        var stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private var createLabel : UILabel = {
       var label = UILabel()
        label.text = "Create Account"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private var enterName : UITextField = {
       var textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "Your Name" , attributes: [NSAttributedString.Key.foregroundColor : UIColor(named: "placeHolderColor")])
        
        textField.tintColor = UIColor(named: "placeHolderColor")
        textField.backgroundColor = UIColor(named: "textFieldColor")
        textField.textColor = UIColor(named: "placeHolderColor")
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 25
        return textField
    }()
    
    private var enterEmail : UITextField = {
        var textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "Email" , attributes: [NSAttributedString.Key.foregroundColor : UIColor(named: "placeHolderColor")])
        textField.backgroundColor = UIColor(named: "textFieldColor")
        textField.tintColor = UIColor(named: "placeHolderColor")
        textField.textColor = UIColor(named: "placeHolderColor")
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 25
         return textField
    }()
    
    private var enterPassword : UITextField = {
       var textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "Password" , attributes: [NSAttributedString.Key.foregroundColor : UIColor(named: "placeHolderColor")])
        textField.backgroundColor = UIColor(named: "textFieldColor")
        textField.tintColor = UIColor(named: "placeHolderColor")
        textField.textColor = UIColor(named: "placeHolderColor")
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 25
        return textField
    }()
    
    private var confirmPassword : UITextField = {
       var textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "Confirm Password" , attributes: [NSAttributedString.Key.foregroundColor : UIColor(named: "placeHolderColor")])
        textField.backgroundColor = UIColor(named: "textFieldColor")
        textField.textColor = UIColor(named: "placeHolderColor")
        textField.tintColor = UIColor(named: "placeHolderColor")
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 25
        return textField
    }()
    
    private var createAccountButton : UIButton = {
       var button = UIButton()
        button.setTitle("Create Your Account", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 20,weight: .bold)
        button.backgroundColor = UIColor(named: "signInColor")
        button.layer.cornerRadius = 25
        return button
    }()
    
    private var passwordWarning : UILabel = {
       var label = UILabel()
        label.text = "Password must be atleast 6 characters"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(named: "placeHolderColor")
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 12)
        return label
    }()
    
    private var termsAndCondition : UILabel = {
        var label = UILabel()
        label.text = "Terms & Conditions"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
         return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor(named: "background_color")
        
        stackView.addSubview(enterName)
        stackView.addSubview(enterEmail)
        stackView.addSubview(enterPassword)
        stackView.addSubview(confirmPassword)
        stackView.addSubview(passwordWarning)
        stackView.addSubview(createAccountButton)
        
        enterName.addIconOnLeft(40, "person.circle")
        enterEmail.addIconOnLeft(40, "envelope" )
        enterPassword.addIconOnLeft(40, "lock")
        confirmPassword.addIconOnLeft(40, "lock")
        
        view.addSubview(stackView)
        view.addSubview(createLabel)
        view.addSubview(termsAndCondition)
        
        applyConstraints()
    }
    

    func applyConstraints(){
        let createLabelConstraints = [
        
            createLabel.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: -50),
            createLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            createLabel.heightAnchor.constraint(equalToConstant: 40),
            
        ]
        
        let stackViewConstraints = [
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 300),
            stackView.heightAnchor.constraint(equalToConstant: 350),
        ]
        
        let stackViewAllComponentsConstraints = [
            enterName.heightAnchor.constraint(equalToConstant: 50),
            enterName.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            
            enterEmail.heightAnchor.constraint(equalToConstant: 50),
            enterEmail.topAnchor.constraint(equalTo: enterName.bottomAnchor, constant: 10),
            enterEmail.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            
            enterPassword.heightAnchor.constraint(equalToConstant: 50),
            enterPassword.topAnchor.constraint(equalTo: enterEmail.bottomAnchor, constant: 10),
            enterPassword.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            
            passwordWarning.heightAnchor.constraint(equalToConstant: 10),
            passwordWarning.topAnchor.constraint(equalTo: enterPassword.bottomAnchor, constant: 10),
            passwordWarning.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            
            confirmPassword.heightAnchor.constraint(equalToConstant: 50),
            confirmPassword.topAnchor.constraint(equalTo: passwordWarning.bottomAnchor, constant: 10),
            confirmPassword.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            
            createAccountButton.heightAnchor.constraint(equalToConstant: 50),
            createAccountButton.topAnchor.constraint(equalTo: confirmPassword.bottomAnchor, constant: 50),
            createAccountButton.widthAnchor.constraint(equalTo: stackView.widthAnchor),
        ]
        
        let termsAndConditionsConstraints = [
            termsAndCondition.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 20),
            termsAndCondition.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            termsAndCondition.heightAnchor.constraint(equalToConstant: 30),
        ]
        
        NSLayoutConstraint.activate(createLabelConstraints)
        NSLayoutConstraint.activate(stackViewConstraints)
        NSLayoutConstraint.activate(stackViewAllComponentsConstraints)
        NSLayoutConstraint.activate(termsAndConditionsConstraints)
    }

}
