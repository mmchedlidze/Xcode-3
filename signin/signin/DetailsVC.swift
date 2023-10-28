//
//  DetailsVC.swift
//  signin
//
//  Created by Mariam Mchedlidze on 28.10.23.
//

import UIKit

class DetailsVC: UIViewController {
    
    let stackView = UIStackView()
    let buttons = UIStackView()
    let info = UIStackView()
    
    // MARK - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        card()
        details()
        settings()

    }
    
    func card () {
        stackView.axis = .vertical
        stackView.backgroundColor = UIColor.white
        stackView.spacing = 16
        view.addSubview(stackView)
        
        let image = UIImageView(image: UIImage(named: "profile"))
        image.layer.cornerRadius = 10
        image.layer.masksToBounds = true
        
        let info = UILabel()
        info.text = "Mrs. Susan Lee "
        info.textAlignment = .center
        
        stackView.addArrangedSubview(image)
        stackView.addArrangedSubview(info)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.widthAnchor.constraint(equalToConstant: 200),
            image.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    
    func details () {
        info.axis = .vertical
        info.backgroundColor = UIColor.white
        info.spacing = 16
        view.addSubview(info)
        
        let detailed = UILabel()
        detailed.text = "About me: A daring photojournalist capturing untold stories worldwide. Join her thrilling adventures through the lens, discovering the unseen, one click at a time. Experience the world through my eyes today!"
        detailed.font = .systemFont(ofSize: 15, weight: .regular)
        detailed.textAlignment = .center
        detailed.numberOfLines = 10
        detailed.preferredMaxLayoutWidth = 300
        
        info.addArrangedSubview(detailed)
        
        info.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            info.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 36),
            info.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func settings () {
        buttons.axis = .horizontal
        buttons.spacing = 16
        view.addSubview(buttons)
        
        let button = UIButton()
        button.setTitle("Update Status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 13, weight: .light)
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor(red: 82/255, green: 22/255, blue: 129/255, alpha: 1)
        
        let button2 = UIButton()
        button2.setTitle("Change Settings", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button2.titleLabel?.font = .systemFont(ofSize: 13, weight: .light)
        button2.setTitleColor(.black, for: .normal)
        button2.layer.cornerRadius = 10
        button2.backgroundColor = UIColor(red: 82/255, green: 22/255, blue: 129/255, alpha: 0.2)
        button2.addAction(UIAction(handler:  { action in self.navigateTodetailsButtons()
        }), for: .touchUpInside)
        
        buttons.addArrangedSubview(button)
        buttons.addArrangedSubview(button2)
        
        buttons.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttons.topAnchor.constraint(equalTo: info.bottomAnchor, constant: 16),
            buttons.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 120),
            button.heightAnchor.constraint(equalToConstant: 45),
            button2.widthAnchor.constraint(equalToConstant: 120),
            button2.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    func navigateTodetailsTxt () {
        self.navigationController?.pushViewController(ColorVC(), animated: false) }
    func navigateTodetailsButtons () {
        self.navigationController?.pushViewController(ColorVC(), animated: false) }
    
}
