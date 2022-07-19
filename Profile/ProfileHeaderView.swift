//
//  ProfileHeaderView.swift
//  NavigTest
//
//  Created by Mac on 18.07.2022.
//

import UIKit

class ProfileHeaderView: UIView {
   
    var profileView: UIImageView!
    var label: UILabel!
        
      let screenSize = UIScreen.main.bounds
      
      override init(frame: CGRect){
        super.init(frame: frame)
        profileView = UIImageView(frame: CGRect(x: 15, y: 115, width: 100, height: 100))
        profileView.backgroundColor = .gray
        profileView.layer.borderColor = UIColor.white.cgColor
        profileView.layer.borderWidth = 4.0
        profileView.layer.cornerRadius = 50
    
       // profileView.autoSetDimension(.width, toSize: 124.0)
       // profileView.autoSetDimension(.height, toSize: 124.0)
        
        self.addSubview(profileView)
          
          label = UILabel (frame: CGRect(x: 155, y: 155, width: 100, height: 50))
          label.backgroundColor = .white
          self.addSubview(label)

//-------------------
//    let label = UILabel(frame: CGRect(x: 150, y: 350, width: 100, height: 20))
//    let picture = UIImageView()
//    let button = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
//
//    func updateText(_ text:String?) {
//           guard let text = text else { return }
//           label.text = text
//       }
//
//       override init(frame: CGRect){
//           super.init(frame: frame)
//           label.translatesAutoresizingMaskIntoConstraints = false
//           label.text = "OneView!"
//           label.numberOfLines = 0
//           label.textColor = .red
//           label.textAlignment = .center
//           button.backgroundColor = .blue
//           button.layer.cornerRadius = 12
//           button.setTitle("Push", for: .normal)
//           self.addSubview(label)
//           self.addSubview(button)
//       }
//
//       override func layoutSubviews() {
//           super.layoutSubviews()
//           label.frame = bounds
//           button.frame = bounds // не было вначале
//       }
//
//       required init?(coder aDecoder: NSCoder) {
//           fatalError("init(coder:) has not been implemented")
//       }
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
