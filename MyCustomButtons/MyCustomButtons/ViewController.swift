//
//  ViewController.swift
//  MyCustomButtons
//
//  Created by 윤병일 on 2020/11/22.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let twoLinedButton = TwoLinedButton(frame: CGRect(x: 0, y: 0, width: 300, height: 55))
    view.addSubview(twoLinedButton)
    twoLinedButton.center = view.center
    twoLinedButton.configure(with: TwoLinedButtonViewModel(
                              primaryText: "Start Free Trial",
                              secondaryText: "3 days free, then $1.99/mo"))
    
    let iconButton = IconTextButton(frame: CGRect(x: (view.frame.size.width - 300) / 2 , y: 60, width: 300, height: 55))
    view.addSubview(iconButton)
    iconButton.configure(with: IconTextButtonViewModel(
                          text: "Book Flight",
                          image: UIImage(systemName: "airplane"),
                          backgroundColor: .link))
    
  }


}

