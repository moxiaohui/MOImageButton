//
//  MOSwiftImageButtonsView.swift
//  MOImageButton
//
//  Created by 莫晓卉 on 2020/12/20.
//  Copyright © 2020 moxiaohui. All rights reserved.
//

import UIKit
import SnapKit

class MOSwiftImageButtonsView: UIView {

  override init(frame: CGRect) {
    super.init(frame: frame)
    self.setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setupView() {
    let titleLb = UILabel()
    titleLb.text = "Swift 版本"
    titleLb.textColor = .red
    self.addSubview(titleLb)
    titleLb.snp.makeConstraints { make in
      make.top.equalTo(10)
      make.centerX.equalToSuperview()
    }
    
    // Swift 版本
    self.swiftTopImageButton()    // 上
    self.swiftBottomImageButton() // 下
    self.swiftLeftImageButton();  // 左边
    self.swiftRightImageButton(); // 右边
  }
  
  // MARK: - 图片在上
  func swiftTopImageButton() {
    let btn: MOButton = getButton(.top) as! MOButton
    btn.snp.makeConstraints { (make) in
      make.top.equalTo(220)
      make.centerX.equalToSuperview()
    }
    btn.moLayout()
  }
  
  // MARK: - 图片在下
  func swiftBottomImageButton() {
    let btn: MOButton = getButton(.bottom) as! MOButton
    btn.snp.makeConstraints { (make) in
      make.top.equalTo(300)
      make.centerX.equalToSuperview()
    }
    btn.moLayout()
  }
  
  // MARK: - 图片在左
  func swiftLeftImageButton() {
    let btn: MOButton = getButton(.left) as! MOButton
    btn.snp.makeConstraints { (make) in
      make.top.equalTo(80)
      make.centerX.equalToSuperview()
      make.height.equalTo(44)
    }
    btn.moLayout()
  }
  
  // MARK: - 图片在右
  func swiftRightImageButton() {
    let btn: MOButton = getButton(.right) as! MOButton
    btn.snp.makeConstraints { (make) in
      make.top.equalTo(130)
      make.centerX.equalToSuperview()
      make.height.equalTo(44)
    }
    btn.moLayout()
  }

  func getButton(_ type: MOButtonType) -> UIButton {
    let btn: MOButton = MOButton(type: .custom)
    btn.moType = type
    btn.backgroundColor = .gray
    btn.setTitle("自适应宽度", for: .normal)
    btn.setTitleColor(.black, for: .normal)
    btn.setImage(UIImage(named: "icon_delete"), for: .normal)
    self.addSubview(btn)
    return btn
  }

  
}
