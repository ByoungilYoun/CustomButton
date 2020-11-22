//
//  TwoLinedButton.swift
//  MyCustomButtons
//
//  Created by 윤병일 on 2020/11/23.
//

import UIKit



final class TwoLinedButton : UIButton {
  
  //MARK: -  Properties
  private let primaryLabel : UILabel = {
    let label = UILabel()
    label.numberOfLines = 1
    label.textAlignment = .center
    label.textColor = .white
    label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
    return label
  }()
  
  private let secondaryLabel : UILabel = {
    let label = UILabel()
    label.numberOfLines = 1
    label.textAlignment = .center
    label.textColor = .white
    label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
    return label
  }()
  
  //MARK: - init
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    addSubview(primaryLabel)
    addSubview(secondaryLabel)
    clipsToBounds = true
    layer.cornerRadius = 8
    layer.borderWidth = 1
    layer.borderColor = UIColor.secondarySystemBackground.cgColor
    backgroundColor = .systemGreen
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  //MARK: - configure
  func configure(with viewModel : TwoLinedButtonViewModel ) {
    primaryLabel.text = viewModel.primaryText
    secondaryLabel.text = viewModel.secondaryText
  }
  
  //MARK: - layoutSubviews
  override func layoutSubviews() {
    super.layoutSubviews()
    primaryLabel.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height / 2)
    secondaryLabel.frame = CGRect(x: 0, y: frame.size.height / 2, width: frame.size.width, height: frame.size.height / 2)
    
  }
}
