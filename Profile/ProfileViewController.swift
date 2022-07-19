//
//  ProfileViewController.swift
//  NavigTest
//
//  Created by Mac on 08.07.2022.
//

import UIKit

class ProfileViewController: UIViewController {
   
    var profile: ProfileHeaderView!
    // let myview = ProfileHeaderView()
     //let parview = ProfileHeaderView()

//     override func loadView() {
//         let view = UIView()
//         view.backgroundColor = .black
//         self.view = view
//     }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        profile = ProfileHeaderView(frame: CGRect.zero)
          self.view.addSubview(profile)
 //------------------------
//        setupLabels()
//        view.addSubview(aview)
//
//        // setupStack()
//
//            }
//
//            func setupLabels() {
//                aview.updateText("A View")
//                aview.label.textColor = .black
//                aview.label.font.withSize(14)
//
//                myview.updateText("Another View with more to say - this is a full bit of text")
//               parview.updateText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis porttitor interdum ex dictum auctor. Proin nec imperdiet sem. Duis pulvinar tortor viverra elit convallis tempus. Maecenas egestas elit eu convallis mattis. Sed non hendrerit tortor. Phasellus lectus dolor, pretium sed dignissim scelerisque, vulputate id dolor. Sed ac rhoncus enim.")
//                // can also access the label directly - but better to make a function if this will be changed often.
//                myview.label.textColor = .white
 //           }
       
//
//            func setupStack() {
//                let subviews = aview
               // let stackView = UIStackView()
//                for view in subviews {
//                    stackView.addArrangedSubview(view)
  //              }
//                stackView.axis = .vertical
//                stackView.distribution = .fillEqually
//                stackView.alignment = .fill
//                stackView.spacing = 10
//                stackView.translatesAutoresizingMaskIntoConstraints = false

//                view.addSubview(stackView)
//                //autolayout the stack view
//                let sH = NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[stackView]-20-|", options: NSLayoutConstraint.FormatOptions(rawValue: 0), metrics: nil, views: ["stackView":stackView])
//                let sV = NSLayoutConstraint.constraints(withVisualFormat: "V:|-30-[stackView]-30-|", options: NSLayoutConstraint.FormatOptions(rawValue:0), metrics: nil, views: ["stackView":stackView])
//                view.addConstraints(sH)
//                view.addConstraints(sV)
//            }

    }



}
