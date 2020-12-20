//
//  MOButton.swift
//  MOImageButton
//
//  Created by 莫晓卉 on 2020/12/20.
//  Copyright © 2020 moxiaohui. All rights reserved.
//

import UIKit

enum MOButtonType {
  case top, bottom, left, right
}

class MOButton: UIButton {
  
  var moType: MOButtonType = .top
  var moMargin: CGFloat = 4  // 间距（上下左右的，label和image间的）默认：4
  
  // MARK: - 添加到父视图上后调用
  func moLayout() {
    let imgWidth: CGFloat = self.imageView?.bounds.size.width ?? 0
    let imgHeight: CGFloat = self.imageView?.bounds.size.height ?? 0
    let labWidth: CGFloat = self.titleLabel?.bounds.size.width ?? 0
    let labHeight: CGFloat = self.titleLabel?.bounds.size.height ?? 0
    let width: CGFloat = max(labWidth, imgWidth)
    
    switch moType {
    case .top:
      self.titleEdgeInsets = UIEdgeInsets(top: moMargin+imgHeight, left: -imgWidth, bottom: 0, right: 0)
      self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: labHeight+2*moMargin, right: 0)
      self.imageView?.snp.makeConstraints { (make) in
        make.centerX.equalToSuperview()
      }
      self.snp.makeConstraints { (make) in
        make.height.equalTo(imgHeight + labHeight + 3*moMargin)
        make.width.equalTo(width + 2*moMargin)
      }
    case .bottom:
      self.titleEdgeInsets = UIEdgeInsets(top: moMargin, left: -imgWidth, bottom: 2*moMargin + imgHeight, right: 0)
      self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
      self.imageView?.snp.makeConstraints({ (make) in
        make.centerX.equalToSuperview()
        make.bottom.equalTo(-moMargin)
      })
      self.snp.makeConstraints { (make) in
        make.height.equalTo(imgHeight + labHeight + 3*moMargin)
        make.width.equalTo(width + 2*moMargin)
      }
    case .left:
      self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 2*moMargin, bottom: 0, right: moMargin)
      self.imageEdgeInsets = UIEdgeInsets(top: 0, left: moMargin, bottom: 0, right: 0)
      self.snp.makeConstraints { (make) in
        make.width.equalTo(imgWidth + labWidth + 3*moMargin)
      }
    case .right:
      self.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imgWidth, bottom: 0, right: imgWidth+moMargin)
      self.imageEdgeInsets = UIEdgeInsets(top: 0, left: labWidth + moMargin, bottom: 0, right: -moMargin)
      self.snp.makeConstraints { (make) in
        make.width.equalTo(imgWidth + labWidth + 3*moMargin)
      }
    }
  }

}
