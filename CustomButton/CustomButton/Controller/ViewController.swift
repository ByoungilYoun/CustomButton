//
//  ViewController.swift
//  CustomButton
//
//  Created by 윤병일 on 2020/07/21.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  //MARK: - Properties
  private let myButton : MyCustomButton = {
    let bt = MyCustomButton()
    return bt
  }()

  //MARK: -  viewDidLoad()
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .red
    
    setUI()
    setConstraint()
  }

  //MARK: - setUI()
  private func setUI() {
    let viewModel = MyCustomButtonViewModel(title: "구매", image: "cart")
    myButton.configure(with: viewModel)
    myButton.backgroundColor = .blue
    view.addSubview(myButton)
  }
  
  //MARK: - setConstraint()
  private func setConstraint(){
    myButton.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      myButton.widthAnchor.constraint(equalToConstant: 200),
      myButton.heightAnchor.constraint(equalToConstant: 100)
    ])
  }
  
}

