//
//  ProfileHeaderView.swift
//  NavigTest
//
//  Created by Mac on 18.07.2022.
//

import UIKit


class ProfileHeaderView: UIView {
   
    private  lazy var profileView: UIImageView = {
        let  pv = UIImageView()
          pv.backgroundColor = .gray
          pv.image = UIImage(named: "A330-300.jpg")
          pv.layer.borderColor = UIColor.white.cgColor
          pv.layer.borderWidth = 3.0
          pv.layer.cornerRadius = 50
          pv.layer.masksToBounds = true
          pv.translatesAutoresizingMaskIntoConstraints = false
        return pv
    }()
    
    
    private  lazy var name: UILabel = {
        let nm = UILabel()
        nm.backgroundColor = .lightGray
        nm.text = "Пилот квадрокоптера"
        nm.font.withSize(18)
        nm.font = UIFont.boldSystemFont(ofSize: 18)
        nm.translatesAutoresizingMaskIntoConstraints = false
        return nm
    }()
    
    
    private lazy var setStatus: UITextField = {
        let ss = UITextField()
        ss.placeholder = "Задайте статус"
        ss.font = UIFont.systemFont(ofSize: 15)
        ss.backgroundColor = .white
        ss.layer.cornerRadius = 12
        ss.layer.borderWidth = 1
        ss.layer.borderColor = CGColor(red: 0, green: 0, blue: 255, alpha: 10)
        ss.keyboardType = UIKeyboardType.default
        ss.returnKeyType = UIReturnKeyType.done
        ss.clearButtonMode = UITextField.ViewMode.whileEditing;
        ss.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        ss.translatesAutoresizingMaskIntoConstraints = false
        return ss
    }()
    
    
    private  lazy var changeStatusButton: UIButton = {
        let csb = UIButton()
        csb.backgroundColor = .blue
        csb.layer.cornerRadius = 4
        csb.setTitle("Изменить статус", for: .normal)
        csb.setTitleColor(.white, for: .normal)
        csb.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        csb.layer.shadowRadius = 4
        csb.layer.shadowColor = UIColor.black.cgColor
        csb.layer.shadowOffset = CGSize(width: 4, height: 4)
        csb.layer.shadowOpacity = 0.7
        csb.layer.masksToBounds = false
        csb.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        csb.isUserInteractionEnabled = true
        csb.translatesAutoresizingMaskIntoConstraints = false
        return csb
    }()
    
    
    private  lazy var newButton: UIButton = {
       let nb = UIButton()
        nb.backgroundColor = .blue
        nb.layer.cornerRadius = 4
        nb.setTitle("Новая кнопка", for: .normal)
        nb.setTitleColor(.white, for: .normal)
        nb.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        nb.translatesAutoresizingMaskIntoConstraints = false
        return nb
    }()
    
    
    private lazy var status: UILabel = {
        let st = UILabel()
        st.backgroundColor = .lightGray
        st.text = "Ожидаю лучших времен"
        st.textColor = .gray
        st.translatesAutoresizingMaskIntoConstraints = false
        return st
    }()
  
      override init(frame: CGRect){
        super.init(frame: frame)
        self.addSubview(profileView)
        self.addSubview(name)
        self.addSubview(setStatus)
        self.addSubview(changeStatusButton)
        self.addSubview(newButton)
        self.addSubview(status)
          
        setupConstrains()
}

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
      private  func setupConstrains() {
             
          let safeArea = self.safeAreaLayoutGuide
          NSLayoutConstraint.activate([
            
            profileView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16.0),
            profileView.widthAnchor.constraint(equalToConstant: 100),
            profileView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 16.0),
            profileView.heightAnchor.constraint(equalToConstant: 100),
            
            name.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 137),
            name.widthAnchor.constraint(equalToConstant: 280),
            name.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 17),
            name.heightAnchor.constraint(equalToConstant: 25),
            
            setStatus.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 137),
            setStatus.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -12),
            setStatus.heightAnchor.constraint(equalToConstant: 40),
            setStatus.bottomAnchor.constraint(equalTo: changeStatusButton.topAnchor, constant: -10),
            
            changeStatusButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16),
            changeStatusButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16.0),
            changeStatusButton.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 16),
            changeStatusButton.heightAnchor.constraint(equalToConstant: 50),
            
            newButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            newButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            newButton.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            
            status.bottomAnchor.constraint(equalTo: setStatus.topAnchor, constant: -8),
            status.heightAnchor.constraint(equalToConstant: 20),
            status.widthAnchor.constraint(equalToConstant: 250),
            status.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 137)

          ])
    }
    
    @objc func buttonPressed(sender: UIButton) {
        status.text = setStatus.text!
    }
}

