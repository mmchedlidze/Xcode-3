//
//  ViewController.swift
//  signin
//
//  Created by Mariam Mchedlidze on 28.10.23.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {
    
    let stackViewProfile = UIStackView()
    let stackViewInfo = UIStackView()
    let signInButton = UIStackView()
    let separator = UIStackView()
    let iconsStackView = UIStackView()
    let footerStackView = UIStackView()
    
    // MARK - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        header()
        infoFill()
        signIn()
        icons()
        separatorline()
        footer()
    }
    
    func header() {
        
        // MARK - Setup
        
        stackViewProfile.axis = .vertical
        stackViewProfile.backgroundColor = UIColor.white
        stackViewProfile.spacing = 15
        view.addSubview(stackViewProfile)
        
        let image = UIImageView(image: UIImage(named: "profile"))
        image.layer.cornerRadius = 80
        image.layer.masksToBounds = true
        
        let signIn = UILabel()
        signIn.text = "Sign In"
        signIn.font = .systemFont(ofSize: 20, weight: .bold)
        signIn.textAlignment = .center
        
        stackViewProfile.addArrangedSubview(image)
        stackViewProfile.addArrangedSubview(signIn)
        
        // MARK - Layout
        
        stackViewProfile.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackViewProfile.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 90),
            stackViewProfile.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.widthAnchor.constraint(equalToConstant: 160),
            image.heightAnchor.constraint(equalToConstant: 160)
        ])
    }
    
    func infoFill() {
        
        // MARK - Setup
        
        stackViewInfo.axis = .vertical
        stackViewInfo.backgroundColor = UIColor.white
        stackViewInfo.spacing = 15
        view.addSubview(stackViewInfo)
        
        let email = UITextField()
        email.text = "Email"
        email.font = .systemFont(ofSize: 14, weight: .regular)
        email.textColor = UIColor(red: 95/255, green: 95/255, blue: 95/255, alpha: 1)
        email.layer.borderColor = CGColor(red: 178/255, green: 178/255, blue: 178/255, alpha: 1)
        email.layer.borderWidth = 1.0
        email.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        email.layer.cornerRadius = 16
        email.delegate = self
        
        let paddingEmail = UIView(frame: CGRect(x:0, y:0, width: 16, height: email.frame.size.height))
        email.leftView = paddingEmail
        email.leftViewMode = .always
        
        let password = UITextField()
        password.text = "Password"
        password.font = .systemFont(ofSize: 14, weight: .regular)
        password.textColor = UIColor(red: 95/255, green: 95/255, blue: 95/255, alpha: 1)
        password.layer.borderColor = CGColor(red: 178/255, green: 178/255, blue: 178/255, alpha: 1)
        password.layer.borderWidth = 1.0
        password.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        password.layer.cornerRadius = 16
        password.delegate = self
        
        let paddingPassword = UIView(frame: CGRect(x:0, y:0, width: 16, height: password.frame.size.height))
        password.leftView = paddingPassword
        password.leftViewMode = .always
        
        let passwordRecovery = UILabel()
        passwordRecovery.text = "Forgot Your Password?"
        passwordRecovery.font = .systemFont(ofSize: 14, weight: .regular)
        passwordRecovery.textColor = UIColor(red: 95/255, green: 95/255, blue: 95/255, alpha: 1)
        passwordRecovery.textAlignment = .right
        
        view.addSubview(paddingEmail)
        view.addSubview(paddingPassword)
        stackViewInfo.addArrangedSubview(email)
        stackViewInfo.addArrangedSubview(password)
        stackViewInfo.addArrangedSubview(passwordRecovery)
        
        // MARK - Layout
        
        stackViewInfo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackViewInfo.topAnchor.constraint(equalTo: stackViewProfile.bottomAnchor, constant: 32),
            stackViewInfo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            email.widthAnchor.constraint(equalToConstant: 289),
            email.heightAnchor.constraint(equalToConstant: 53),
            password.widthAnchor.constraint(equalToConstant: 289),
            password.heightAnchor.constraint(equalToConstant: 53)
        ])
    }
    
    func signIn() {
        
        // MARK - Setup
        
        signInButton.backgroundColor = UIColor.white
        view.addSubview(signInButton)
        
        let button = UIButton ()
        button.setTitle("Sign in", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15, weight: .medium)
        button.layer.cornerRadius = 23
        button.backgroundColor = UIColor(red: 34/255, green: 87/255, blue: 122/255, alpha: 1)
        button.addAction(UIAction(handler:  { action in self.navigateToDetails()
        }), for: .touchUpInside)
        
        signInButton.addArrangedSubview(button)
        
        // MARK - Layout
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: stackViewInfo.bottomAnchor, constant: 32),
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 292),
            button.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func separatorline() {
        
        // MARK - Setup
        
        separator.axis = .horizontal
        separator.backgroundColor = UIColor.white
        separator.spacing = 8
        separator.frame = CGRect(x: 200, y: 200, width: 200, height: 200)
        separator.distribution = .equalCentering
        view.addSubview(separator)
        
        let linerLeft = UIView()
        linerLeft.backgroundColor = UIColor(red: 95/255, green: 95/255, blue: 95/255, alpha: 1)
        
        let text = UILabel()
        text.text = "Or"
        text.font = .systemFont(ofSize: 14, weight: .regular)
        text.textColor = UIColor(red: 95/255, green: 95/255, blue: 95/255, alpha: 1)
        text.setContentHuggingPriority(.required, for: .vertical)
        text.setContentCompressionResistancePriority(.required, for: .vertical)
        
        let linerRight = UIView()
        linerRight.backgroundColor = UIColor(red: 95/255, green: 95/255, blue: 95/255, alpha: 1)
        
        separator.addArrangedSubview(linerLeft)
        separator.addArrangedSubview(text)
        separator.addArrangedSubview(linerRight)
        
        // MARK - Layout
        
        separator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            separator.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 32),
            separator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            linerLeft.widthAnchor.constraint(equalToConstant: 120),
            linerLeft.heightAnchor.constraint(equalToConstant: 1),
            linerRight.widthAnchor.constraint(equalToConstant: 120),
            linerRight.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    func icons() {
        
        // MARK - Setup
        
        iconsStackView.axis = .horizontal
        iconsStackView.backgroundColor = UIColor.white
        iconsStackView.spacing = 11
        view.addSubview(iconsStackView)
        
        let googleButton = UIButton (type: .custom)
        let google = UIImage(named: "google")
        googleButton.setImage(google, for: .normal)
        
        let facebookButton = UIButton (type: .custom)
        let facebook = UIImage(named: "facebook")
        facebookButton.setImage(facebook, for: .normal)
        
        let linkedinButton = UIButton (type: .custom)
        let linkedin = UIImage(named: "linkedin")
        linkedinButton.setImage(linkedin, for: .normal)
        
        iconsStackView.addArrangedSubview(googleButton)
        iconsStackView.addArrangedSubview(facebookButton)
        iconsStackView.addArrangedSubview(linkedinButton)
        
        // MARK - Layout
        
        iconsStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            iconsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iconsStackView.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant:63),
            googleButton.widthAnchor.constraint(equalToConstant: 30),
            googleButton.heightAnchor.constraint(equalToConstant: 30),
            facebookButton.widthAnchor.constraint(equalToConstant: 30),
            facebookButton.heightAnchor.constraint(equalToConstant: 30),
            linkedinButton.widthAnchor.constraint(equalToConstant: 30),
            linkedinButton.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    func footer() {
        
        // MARK - Setup
        
        footerStackView.axis = .horizontal
        footerStackView.backgroundColor = UIColor.white
        footerStackView.spacing = 0
        footerStackView.frame = CGRect(x: 20, y: 200, width: 200, height: 200)
        view.addSubview(footerStackView)
        
        let label = UILabel()
        label.text = "Don't have an account."
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = UIColor(red: 95/255, green: 95/255, blue: 95/255, alpha: 1)
        
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(UIColor(red: 34/255, green: 87/255, blue: 122/255, alpha: 1), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14, weight: .regular)
        
        footerStackView.addArrangedSubview(label)
        footerStackView.addArrangedSubview(button)
        
        // MARK - Layout
        
        footerStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            footerStackView.topAnchor.constraint(equalTo: iconsStackView.bottomAnchor, constant: 65),
            footerStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
    }
    
    func navigateToDetails() {
        guard let email = stackViewInfo.arrangedSubviews[0] as? UITextField,
              let password = stackViewInfo.arrangedSubviews[1] as? UITextField else {
            return
        }
        
        if let emailText = email.text, let passwordText = password.text,
           !emailText.isEmpty, !passwordText.isEmpty {
            self.navigationController?.pushViewController(DetailsVC(), animated: false)
        } else {
            let alert = UIAlertController(title: "Incomplete Fields", message: "Please fill in both email and password fields.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}


