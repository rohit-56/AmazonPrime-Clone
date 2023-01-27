//
//  LoginViewController.swift
//  AmazonPrime-Clone
//
//  Created by Rohit Sharma on 22/01/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    private var background : UIImageView = {
       var background = UIImageView()
        background.backgroundColor = UIColor(named: "background_color")
        return background
    }()
    
    private var amazonPrimeLogo : UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "primeLogo")
        return imageView
    }()
    
    private var signInLabel : UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign in with your"
        label.font = .systemFont(ofSize: 22,weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    private var createAccountLabel : UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Amazon Account"
        label.font = .systemFont(ofSize: 22,weight: .medium)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    private var stackView : UIStackView = {
        var stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillProportionally
        stackView.axis = .vertical
        return stackView
    }()
    
    private var enterEmail : UITextField = {
        var textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.attributedPlaceholder = NSAttributedString(string: "Email or mobile number" , attributes: [NSAttributedString.Key.foregroundColor : UIColor(named: "placeHolderColor")])
        textField.backgroundColor = UIColor(named: "textFieldColor")
        textField.textColor = UIColor(named: "placeHolderColor")
        textField.tintColor = UIColor(named: "placeHolderColor")
        textField.layer.borderColor = UIColor(named: "placeHolderColor")?.cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 25
        return textField
    }()
    
    private var enterPassword : UITextField = {
        var textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(named: "textFieldColor")
        textField.attributedPlaceholder = NSAttributedString(string: "Password" , attributes: [NSAttributedString.Key.foregroundColor : UIColor(named: "placeHolderColor")])
        textField.textColor = UIColor(named: "placeHolderColor")
        textField.tintColor = UIColor(named: "placeHolderColor")
        textField.layer.borderColor = UIColor(named: "placeHolderColor")?.cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 25
        return textField
    }()
    
    private var forgotPassword : UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.textColor = UIColor(named: "placeHolderColor")
        button.titleLabel?.font = .systemFont(ofSize: 20,weight: .regular)
        
        var attrs = [
            NSAttributedString.Key.underlineStyle : 1]
        
        let buttonTitleStr = NSMutableAttributedString(string:"Forgot your password?", attributes:attrs)
        button.setAttributedTitle(buttonTitleStr, for: .normal)
        return button
    }()
    
    private var continueToHomePage : UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continue", for: .normal)
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 20,weight: .bold)
        button.backgroundColor = UIColor(named: "signInColor")
        button.titleLabel?.textAlignment = .center
        button.layer.cornerRadius = 25
        
        button.addTarget(self, action: #selector(switchToHomeTab), for: .touchUpInside)
        
        return button
    }()
    
    private var termsAndConditions : UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .white
        label.text = "Terms and Conditions"
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        addAllComponentsInView()
        
        applyConstraints()
        
        enterEmail.addIconOnLeft(40, "person.circle")
        enterPassword.addIconOnLeft(40,"lock")
        
    }
    
    func addAllComponentsInView(){
        view.addSubview(background)
        view.addSubview(stackView)
        stackView.addSubview(enterEmail)
        stackView.addSubview(enterPassword)
        stackView.addSubview(forgotPassword)
        stackView.addSubview(continueToHomePage)
        
        view.addSubview(amazonPrimeLogo)
        view.addSubview(signInLabel)
        view.addSubview(createAccountLabel)
        view.addSubview(termsAndConditions)
        
    }
    
    func applyConstraints(){
        let amazonPrimeLogoConstraints = [
            amazonPrimeLogo.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            amazonPrimeLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            amazonPrimeLogo.heightAnchor.constraint(equalToConstant: 70),
            amazonPrimeLogo.widthAnchor.constraint(equalToConstant: 200),
            
        ]
        
        let signInLabelConstraints = [
            signInLabel.topAnchor.constraint(equalTo: amazonPrimeLogo.bottomAnchor, constant: 40),
            signInLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInLabel.heightAnchor.constraint(equalToConstant: 30),
            signInLabel.widthAnchor.constraint(equalToConstant: 200),
        ]
        
        let createLabelConstraints = [
            createAccountLabel.topAnchor.constraint(equalTo: signInLabel.bottomAnchor, constant: 1),
            createAccountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            createAccountLabel.heightAnchor.constraint(equalToConstant: 30),
            createAccountLabel.widthAnchor.constraint(equalToConstant: 200),
        ]
        
        let stackViewConstraints = [
            stackView.topAnchor.constraint(equalTo: createAccountLabel.bottomAnchor, constant: 50),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 300),
            stackView.heightAnchor.constraint(equalToConstant: 250),
        ]
        
        let stackViewComponentsConstraints = [
            enterEmail.heightAnchor.constraint(equalToConstant: 50),
            enterEmail.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            
            enterPassword.heightAnchor.constraint(equalToConstant: 50),
            enterPassword.topAnchor.constraint(equalTo: enterEmail.bottomAnchor, constant: 10),
            enterPassword.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            
            forgotPassword.heightAnchor.constraint(equalToConstant: 30),
            forgotPassword.topAnchor.constraint(equalTo: enterPassword.bottomAnchor, constant: 10),
            forgotPassword.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            
            continueToHomePage.heightAnchor.constraint(equalToConstant: 50),
            continueToHomePage.topAnchor.constraint(equalTo: forgotPassword.bottomAnchor, constant: 50),
            continueToHomePage.widthAnchor.constraint(equalTo: stackView.widthAnchor),
        ]
        
        let termsAndConditionsConstraints = [
            termsAndConditions.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30),
            termsAndConditions.heightAnchor.constraint(equalToConstant: 30),
            termsAndConditions.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ]
        
        NSLayoutConstraint.activate(amazonPrimeLogoConstraints)
        NSLayoutConstraint.activate(signInLabelConstraints)
        NSLayoutConstraint.activate(createLabelConstraints)
        NSLayoutConstraint.activate(stackViewConstraints)
        NSLayoutConstraint.activate(stackViewComponentsConstraints)
        NSLayoutConstraint.activate(termsAndConditionsConstraints)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        background.frame = view.bounds
    }
    
    @objc func switchToHomeTab(){
        let storyboard = UIStoryboard(name: "MainTabbar", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MainTabBarViewController") as! UITabBarController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    

}
