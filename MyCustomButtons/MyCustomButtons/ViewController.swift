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
  }


}

