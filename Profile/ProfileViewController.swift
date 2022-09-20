//
//  ProfileViewController.swift
//  NavigTest
//
//  Created by Mac on 08.07.2022.
//

import UIKit


class ProfileViewController: UIViewController {
 
   private lazy var profile: ProfileHeaderView = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        self.view.addSubview(profile)
        profile.translatesAutoresizingMaskIntoConstraints = false
        setConstraints()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapGestureHandle))
        self.view.addGestureRecognizer(tapGesture)
    }

    private  func setConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
        profile.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
        profile.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
        profile.topAnchor.constraint(equalTo: safeArea.topAnchor),
        profile.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
    @objc private func tapGestureHandle() {
        self.view.endEditing(true)
    }
}


