//
//  ViewController.swift
//  2305-Final
//
//  Created by Nicolette Tan on 2021-08-13.
//

import UIKit

class ViewController: UIViewController {

    private let welcomeLabel = UILabel()
    private let welcomeText = UILabel()
    private let emailLabel = UILabel()
    private let pwLabel = UILabel()
    private let emailTextField = UITextField()
    private let pwTextField = UITextField()
    private let signinBtn = UIButton()
    private let signupBtn = UIButton()
    
    @objc func clickSignUp(){
        validateForm()
        
        let signUpPage = SignUpController()
        let nav = UINavigationController(rootViewController: signUpPage)
        
        nav.modalPresentationStyle = .fullScreen
        present(nav, animated: true, completion: nil)
    }
    
    @objc func handleSignUp(){
        let emailText = emailTextField.text!
        let pwText = pwTextField.text!
    }
    
    func validateForm(){
        guard let emailText = emailTextField.text, emailText.isEmpty else {return}
        guard let pwText = pwTextField.text, pwText.isEmpty else {return}
        
        startSignUp(email: emailText, pw: pwText)
    }
    
    func startSignUp(email: String, pw: String){
        print("Sign up:", email)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        didLoadSetup()
    }
}


private extension ViewController {
    func didLoadSetup() {
        //subviews
        view.addSubview(welcomeLabel)
        view.addSubview(welcomeText)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(pwLabel)
        view.addSubview(pwTextField)
        view.addSubview(signinBtn)
        view.addSubview(signupBtn)
        
        //setup functions
        setupWelcomeLabel()
        setupWelcomeText()
        setupEmailLabel()
        setupEmailTextField()
        setupPWLabel()
        setupPWTextField()
        setupSignInBtn()
        setupSignUpBtn()
        
    }
    
    func setupWelcomeLabel() {
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
        [
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            welcomeLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 60),
            welcomeLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        welcomeLabel.text = "Sign In"
        welcomeLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        welcomeLabel.textColor = .black
        //welcomeLabel.textAlignment = .left
    }
    
    func setupWelcomeText() {
        welcomeText.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
        [
            welcomeText.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            welcomeText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            welcomeText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeText.heightAnchor.constraint(equalToConstant: 60),
            welcomeText.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        welcomeText.text = "Hi there! Nice to see you again."
        welcomeText.font = UIFont.systemFont(ofSize: 12)
        welcomeText.textColor = .darkGray
    }
    
    func setupEmailLabel() {
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
        [
            emailLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 180),
            emailLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            emailLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailLabel.heightAnchor.constraint(equalToConstant: 60),
            emailLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        emailLabel.text = "Email"
        emailLabel.font = UIFont.systemFont(ofSize: 12)
        emailLabel.textColor = .red
    }
    
    func setupEmailTextField() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
        [
            emailTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        emailTextField.placeholder =  "johndoe@gmail.com"
        emailTextField.font = UIFont.systemFont(ofSize: 12)
    }
    
    func setupPWLabel() {
        pwLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
        [
            pwLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 230),
            pwLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            pwLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pwLabel.heightAnchor.constraint(equalToConstant: 60),
            pwLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        pwLabel.text = "Password"
        pwLabel.font = UIFont.systemFont(ofSize: 12)
        pwLabel.textColor = .red
    }
    
    func setupPWTextField() {
        pwTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
        [
            pwTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 260),
            pwTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            pwTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pwTextField.heightAnchor.constraint(equalToConstant: 60),
            pwTextField.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        pwTextField.placeholder =  "****"
        pwTextField.font = UIFont.systemFont(ofSize: 12)
    }
    
    func setupSignInBtn() {
        signinBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
        [
            signinBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 310),
            signinBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            signinBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signinBtn.heightAnchor.constraint(equalToConstant: 40),
            signinBtn.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        signinBtn.setTitle("Sign In", for: .normal)
        signinBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        signinBtn.translatesAutoresizingMaskIntoConstraints = false
        signinBtn.setTitleColor(.white, for: .normal)
        signinBtn.layer.cornerRadius = 4
        signinBtn.backgroundColor = UIColor.systemPink
    }
    
    func setupSignUpBtn() {
        signupBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
        [
            signupBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 360),
            signupBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            signupBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signupBtn.heightAnchor.constraint(equalToConstant: 40),
            signupBtn.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        signupBtn.setTitle("Sign Up", for: .normal)
        signupBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        signupBtn.translatesAutoresizingMaskIntoConstraints = false
        signupBtn.setTitleColor(.systemPink, for: .normal)
        signupBtn.layer.cornerRadius = 4
        signupBtn.backgroundColor = UIColor.white
        
        //onclick
        signupBtn.addTarget(self, action: #selector(clickSignUp), for: .touchUpInside)
    }
}

