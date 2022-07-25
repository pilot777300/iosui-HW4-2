//
//  ProfileHeaderView.swift
//  NavigTest
//
//  Created by Mac on 18.07.2022.
//

import UIKit


class ProfileHeaderView: UIView {
   
lazy var profileView = UIImageView(frame: CGRect(x: 16, y: 96, width: 100, height: 100))
lazy var label = UILabel (frame: CGRect(x: 137, y: 101, width: 150, height: 25))
lazy var setstatus = UITextField (frame:CGRect(x:137, y:140, width: 150, height: 25))
lazy var showbutton = UIButton(frame: CGRect(x: 16, y: 212, width: 360, height: 50))
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
          label.backgroundColor = .lightGray
          label.text = "В полете"
          label.font.withSize(18)
          label.font = UIFont(name:"HelveticaNeue-Bold", size: 18.0)
          self.addSubview(label)
          
         // setstatus = UITextField (frame:CGRect(x:137, y:140, width: 150, height: 25))
          setstatus.placeholder = "Задайте статус"
         // setstatus.becomeFirstResponder()     // этот метод вызовет экранную клавиатуру,но на симуляторе она тормозит
          setstatus.font = UIFont.systemFont(ofSize: 15)
          setstatus.keyboardType = UIKeyboardType.default
          setstatus.returnKeyType = UIReturnKeyType.done
          setstatus.clearButtonMode = UITextField.ViewMode.whileEditing;
          setstatus.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
          setstatus.addTarget(self, action: #selector(editingChanged), for: UIControl.Event.editingChanged)
          self.addSubview(setstatus)
          
         // showbutton = UIButton(frame: CGRect(x: 16, y: 212, width: 360, height: 50))
          showbutton.backgroundColor = .blue
          showbutton.layer.cornerRadius = 4
          showbutton.titleEdgeInsets.left = 16
          showbutton.titleEdgeInsets.right = 16
          showbutton.setTitle("Изменить статус", for: .normal)
          showbutton.setTitleColor(.white, for: .normal)
          showbutton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
          showbutton.layer.shadowRadius = 4
          showbutton.layer.shadowColor = UIColor.black.cgColor
          showbutton.layer.shadowOffset = CGSize(width: 4, height: 4)
          showbutton.layer.shadowOpacity = 0.7
          showbutton.layer.masksToBounds = false
          showbutton.addTarget(self, action: #selector(saveData), for: .touchUpInside)
          showbutton.isUserInteractionEnabled = true
          self.addSubview(showbutton)
}
   
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func editingChanged(textField: UITextField) {
        changedText = setstatus.text!
    }
    @objc func saveData(sender: UIButton) {
        label.text = setstatus.text
    }
}

