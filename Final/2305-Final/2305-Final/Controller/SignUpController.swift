//
//  SignUpController.swift
//  2305-Final
//
//  Created by Nicolette Tan on 2021-08-13.
//

import Foundation
import UIKit


class SignUpController: UIViewController {
    
    private let signUpLabel = UILabel()
    private let emailLabel = UILabel()
    private let pwLabel = UILabel()
    private let emailTextField = UITextField()
    private let pwTextField = UITextField()
    private let continueBtn = UIButton()
    private let text = UILabel()
    private let backtoSignIn = UIButton()
    
    @objc func clickBacktoSignIn(){
        let signInPage = ViewController()
        let nav = UINavigationController(rootViewController: signInPage)
        
        nav.modalPresentationStyle = .fullScreen
        present(nav, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        didLoadSetup()
    }
    
}


private extension SignUpController {
    func didLoadSetup() {
        //subviews
        view.addSubview(signUpLabel)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(pwLabel)
        view.addSubview(pwTextField)
        view.addSubview(continueBtn)
        view.addSubview(text)
        view.addSubview(backtoSignIn)
        
        //setup functions
        setupSignUpLabel()
        setupEmailLabel()
        setupEmailTextField()
        setupPWLabel()
        setupPWTextField()
        setupContinueBtn()
        setupText()
        setupBacktoSignIn()
    }
    
    func setupSignUpLabel() {
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
        [
            signUpLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            signUpLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            signUpLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpLabel.heightAnchor.constraint(equalToConstant: 60),
            signUpLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        signUpLabel.text = "Sign Up"
        signUpLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        signUpLabel.textColor = .black
        //welcomeLabel.textAlignment = .left
    }
    
    func setupEmailLabel() {
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
        [
            emailLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
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
            emailTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 140),
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
            pwLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 170),
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
            pwTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            pwTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            pwTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pwTextField.heightAnchor.constraint(equalToConstant: 60),
            pwTextField.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        emailTextField.placeholder =  "****"
        emailTextField.font = UIFont.systemFont(ofSize: 12)
    }
    
    func setupContinueBtn() {
        continueBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
        [
            continueBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 230),
            continueBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            continueBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            continueBtn.heightAnchor.constraint(equalToConstant: 40),
            continueBtn.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        continueBtn.setTitle("Continue", for: .normal)
        continueBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        continueBtn.translatesAutoresizingMaskIntoConstraints = false
        continueBtn.setTitleColor(.white, for: .normal)
        continueBtn.layer.cornerRadius = 4
        continueBtn.backgroundColor = UIColor.systemPink
    }
    
    func setupText(){
        text.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
        [
            text.topAnchor.constraint(equalTo: view.topAnchor, constant: 260),
            text.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),            text.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            text.heightAnchor.constraint(equalToConstant: 60),
            text.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        text.text = "Have an Account?"
        text.font = UIFont.systemFont(ofSize: 12)
        text.textColor = .darkGray
        //text.textAlignment = .center
    }
    
    func setupBacktoSignIn(){
        backtoSignIn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
        [
            backtoSignIn.topAnchor.constraint(equalTo: view.topAnchor, constant: 260),
            backtoSignIn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 130),
            backtoSignIn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backtoSignIn.heightAnchor.constraint(equalToConstant: 60),
            backtoSignIn.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        backtoSignIn.setTitle("Sign In", for: .normal)
        backtoSignIn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        backtoSignIn.translatesAutoresizingMaskIntoConstraints = false
        backtoSignIn.setTitleColor(.systemPink, for: .normal)
        
        //onclick
        backtoSignIn.addTarget(self, action: #selector(clickBacktoSignIn), for: .touchUpInside)
    }
}
