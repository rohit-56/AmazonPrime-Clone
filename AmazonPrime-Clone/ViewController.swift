//
//  ViewController.swift
//  Spotify-Clone
//
//  Created by Rohit Sharma on 12/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    private var background : UIImageView = {
        var imageView = UIImageView()
       // imageView.image = UIImage(named: "poster")
        imageView.backgroundColor =  UIColor(named: "background_color")
        return imageView
    }()
    
    private var label : UILabel = {
        var label = UILabel()
        label.text = "Watch anytime,anywhere."
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 24.2, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    
    private var primeLogo : UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "primeLogo")
        return imageView
    }()

    private var signInButton : UIButton = {
       var button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(named: "signInColor")
        button.layer.cornerRadius = 25
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.addTarget(self, action: #selector(switchToLogin), for: .touchUpInside)
        return button
    }()
    
    private var signUpButton : UIButton = {
        var button = UIButton()
        button.setTitle("Create Account", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .clear
        button.setTitleColor(.systemOrange, for: .normal)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor(named: "signUpColor")?.cgColor
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.addTarget(self, action: #selector(switchToSignUp), for: .touchUpInside)
        button.layer.cornerRadius = 25
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.tintColor = .white
        addAllComponentsInView()
        applyConstraints()
       // applyGradient()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        background.frame = view.bounds
    }
    
    func addAllComponentsInView(){
        view.addSubview(background)
        view.addSubview(label)
        view.addSubview(primeLogo)
        view.addSubview(signInButton)
        view.addSubview(signUpButton)
    }
   
    func applyGradient(){
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.startPoint = CGPointMake(0.0, 0.5)
        gradientLayer.endPoint = CGPointMake(1.0, 0.5)
        
        gradientLayer.colors = [
            UIColor(named: "background_color")?.withAlphaComponent(0.9).cgColor,
            UIColor.black.withAlphaComponent(0.6).cgColor
        ]
        
        gradientLayer.frame = view.bounds
        view.layer.addSublayer(gradientLayer)
    }

    func applyConstraints(){
        let primeLogoConstraints = [
            primeLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            primeLogo.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            primeLogo.widthAnchor.constraint(equalToConstant: 250),
            primeLogo.heightAnchor.constraint(equalToConstant: 100),
        ]
        
        let labelConstrains = [
            label.topAnchor.constraint(equalTo: primeLogo.bottomAnchor, constant: 20),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: 300),
            label.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        let singUpButtonConstraints = [
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpButton.widthAnchor.constraint(equalToConstant: 300),
            signUpButton.heightAnchor.constraint(equalToConstant: 50),
            signUpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30)
        ]
        
        let signInButtonConstraints = [
            signInButton.bottomAnchor.constraint(equalTo: signUpButton.topAnchor, constant: -10),
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInButton.widthAnchor.constraint(equalToConstant: 300),
            signInButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        NSLayoutConstraint.activate(primeLogoConstraints)
        NSLayoutConstraint.activate(labelConstrains)
        NSLayoutConstraint.activate(signInButtonConstraints)
        NSLayoutConstraint.activate(singUpButtonConstraints)
    }
    
    @objc func switchToSignUp(){
        let storyboard = UIStoryboard(name: "SignUp", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as UIViewController
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .coverVertical
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func switchToLogin(){
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as UIViewController
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .coverVertical
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

