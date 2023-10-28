//
//  ColorVC.swift
//  signin
//
//  Created by Mariam Mchedlidze on 28.10.23.
//

import UIKit

class ColorVC: UIViewController {
    
    let colorPalleteText = UIStackView()
    let colorPalleteButtons = UIStackView()
    
    // MARK - ViewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        colorText()
        colorButton()
    }
    
    func colorText() {
        colorPalleteText.axis = .horizontal
        colorPalleteText.spacing = 5
        view.addSubview(colorPalleteText)
        
        let label = UILabel()
        label.text = "Color Pallete txt: "
        
        let buttonRed = UIButton()
        buttonRed.backgroundColor = .red
        
        let buttonBlue = UIButton()
        buttonBlue.backgroundColor = .blue
        
        let buttonGreen = UIButton()
        buttonGreen.backgroundColor = .green
        
        let buttonPurple = UIButton()
        buttonPurple.backgroundColor = .purple
        
        
        colorPalleteText.addArrangedSubview(label)
        colorPalleteText.addArrangedSubview(buttonRed)
        colorPalleteText.addArrangedSubview(buttonBlue)
        colorPalleteText.addArrangedSubview(buttonGreen)
        colorPalleteText.addArrangedSubview(buttonPurple)

        colorPalleteText.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            colorPalleteText.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            buttonRed.widthAnchor.constraint(equalToConstant: 50),
            buttonRed.heightAnchor.constraint(equalToConstant: 50),
            buttonBlue.widthAnchor.constraint(equalToConstant: 50),
            buttonBlue.heightAnchor.constraint(equalToConstant: 50),
            buttonGreen.widthAnchor.constraint(equalToConstant: 50),
            buttonGreen.heightAnchor.constraint(equalToConstant: 50),
            buttonPurple.widthAnchor.constraint(equalToConstant: 50),
            buttonPurple.heightAnchor.constraint(equalToConstant: 50),
            ])
        
    }
    
    func colorButton() {
        colorPalleteButtons.axis = .horizontal
        colorPalleteButtons.spacing = 5
        view.addSubview(colorPalleteButtons)
        
        let label = UILabel()
        label.text = "Color Pallete btn:"
        
        let buttonRed = UIButton()
        buttonRed.backgroundColor = .red
        
        let buttonBlue = UIButton()
        buttonBlue.backgroundColor = .blue
        
        let buttonGreen = UIButton()
        buttonGreen.backgroundColor = .green
        
        
        let buttonPurple = UIButton()
        buttonPurple.backgroundColor = .purple
        
        colorPalleteButtons.addArrangedSubview(label)
        colorPalleteButtons.addArrangedSubview(buttonRed)
        colorPalleteButtons.addArrangedSubview(buttonBlue)
        colorPalleteButtons.addArrangedSubview(buttonGreen)
        colorPalleteButtons.addArrangedSubview(buttonPurple)
        
        colorPalleteButtons.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            colorPalleteButtons.topAnchor.constraint(equalTo: colorPalleteText.topAnchor, constant: 100),
            buttonRed.widthAnchor.constraint(equalToConstant: 50),
            buttonRed.heightAnchor.constraint(equalToConstant: 50),
            buttonBlue.widthAnchor.constraint(equalToConstant: 50),
            buttonBlue.heightAnchor.constraint(equalToConstant: 50),
            buttonGreen.widthAnchor.constraint(equalToConstant: 50),
            buttonGreen.heightAnchor.constraint(equalToConstant: 50),
            buttonPurple.widthAnchor.constraint(equalToConstant: 50),
            buttonPurple.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    func changecolor () {
                self.navigationController?.pushViewController(DetailsVC(), animated: false) }

    }
