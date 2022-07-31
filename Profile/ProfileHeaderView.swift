//
//  ProfileHeaderView.swift
//  NavigTest
//
//  Created by Mac on 18.07.2022.
//

import UIKit


class ProfileHeaderView: UIView {
   
lazy var profileView = UIImageView(frame: CGRect(x: 16, y: 96, width: 100, height: 100))
lazy var status = UILabel (frame: CGRect(x: 137, y: 101, width: 150, height: 25))
lazy var setStatus = UITextField (frame:CGRect(x:137, y:140, width: 150, height: 25))
lazy var changeStatusButton = UIButton(frame: CGRect(x: 16, y: 212, width: 360, height: 50))
lazy var changedText: String = ""
  
      override init(frame: CGRect){
        super.init(frame: frame)
        //profileView = UIImageView(frame: CGRect(x: 16, y: 96, width: 100, height: 100))
        profileView.backgroundColor = .gray
        profileView.image = UIImage(named: "A330-300.jpg")
        profileView.layer.borderColor = UIColor.white.cgColor
        profileView.layer.borderWidth = 3.0
        profileView.layer.cornerRadius = 50
        profileView.layer.masksToBounds = true
        self.addSubview(profileView)
          
         // label = UILabel (frame: CGRect(x: 137, y: 101, width: 150, height: 25))
          status.backgroundColor = .lightGray
          status.text = "В полете"
          status.font.withSize(18)
          status.font = UIFont(name:"HelveticaNeue-Bold", size: 18.0)
          self.addSubview(status)
          
         // setstatus = UITextField (frame:CGRect(x:137, y:140, width: 150, height: 25))
          setStatus.placeholder = "Задайте статус"
         // setstatus.becomeFirstResponder()     // этот метод вызовет экранную клавиатуру,но на симуляторе она тормозит
          setStatus.font = UIFont.systemFont(ofSize: 15)
          setStatus.keyboardType = UIKeyboardType.default
          setStatus.returnKeyType = UIReturnKeyType.done
          setStatus.clearButtonMode = UITextField.ViewMode.whileEditing;
          setStatus.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
          setStatus.addTarget(self, action: #selector(editingChanged), for: UIControl.Event.editingChanged)
          self.addSubview(setStatus)
          
         // showbutton = UIButton(frame: CGRect(x: 16, y: 212, width: 360, height: 50))
          changeStatusButton.backgroundColor = .blue
          changeStatusButton.layer.cornerRadius = 4
          changeStatusButton.titleEdgeInsets.left = 16
          changeStatusButton.titleEdgeInsets.right = 16
          changeStatusButton.setTitle("Изменить статус", for: .normal)
          changeStatusButton.setTitleColor(.white, for: .normal)
          changeStatusButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
          changeStatusButton.layer.shadowRadius = 4
          changeStatusButton.layer.shadowColor = UIColor.black.cgColor
          changeStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
          changeStatusButton.layer.shadowOpacity = 0.7
          changeStatusButton.layer.masksToBounds = false
          changeStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
          changeStatusButton.isUserInteractionEnabled = true
          self.addSubview(changeStatusButton)
}
   
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func editingChanged(textField: UITextField) {
        changedText = setStatus.text!
    }
    @objc func buttonPressed(sender: UIButton) {
        status.text = changedText
    }
}

