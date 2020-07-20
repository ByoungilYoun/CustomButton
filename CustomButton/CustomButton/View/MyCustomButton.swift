//
//  MyCustomButton.swift
//  CustomButton
//
//  Created by 윤병일 on 2020/07/21.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

class MyCustomButton : UIButton {
  //MARK: - Properties
  
  private let myTitleLabel : UILabel = {
    let lb = UILabel()
    lb.numberOfLines = 1
    lb.textAlignment = .center
    lb.textColor = .white
    return lb
  }()
  
  private let myIconImage : UIImageView = {
    let im = UIImageView()
    im.contentMode = .scaleAspectFit
    im.tintColor = .white
    return im
  }()
  
  private var viewModel : MyCustomButtonViewModel?
  
  //MARK: - init
  
  override init(frame: CGRect) {
    self.viewModel = nil
    super.init(frame: .zero)
  }
  
  init(with viewModel : MyCustomButtonViewModel) {
    self.viewModel = viewModel
    super.init(frame: .zero)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  //MARK: - setUI()
  private func setUI() {
    layer.masksToBounds = true
    layer.cornerRadius = 10
    layer.borderWidth = 1.5
    layer.borderColor = UIColor.secondarySystemBackground.cgColor
    
    addSubview(myTitleLabel)
    addSubview(myIconImage)
  }
  
  //MARK: - layoutSubViews()
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    [myIconImage, myTitleLabel].forEach {
      $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    NSLayoutConstraint.activate([
      myIconImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
      myIconImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
      myIconImage.heightAnchor.constraint(equalToConstant: 40),
      
      myTitleLabel.topAnchor.constraint(equalTo: myIconImage.bottomAnchor, constant: 10),
      myTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
      myTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant:  -10),
      myTitleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20)
    ])
  }
  
  public func configure(with viewModel : MyCustomButtonViewModel) {
    setUI()
    
    myTitleLabel.text = viewModel.title
    myIconImage.image = UIImage(systemName: viewModel.image)
  }
}
