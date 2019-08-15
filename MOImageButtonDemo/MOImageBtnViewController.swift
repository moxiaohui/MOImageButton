//
//  MOImageBtnViewController.swift
//  MOImageButtonDemo
//
//  Created by moxiaoyan on 2019/8/12.
//  Copyright © 2019 moxiaohui. All rights reserved.
//

import UIKit
import SnapKit

class MOImageBtnViewController: UIViewController {

  var margin : CGFloat = 4
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .white
    
    createLeftButton()  // 左边
    createRightButton() // 右边
    createTopButton() // 上
    createBottomButton() // 下
  }
  
  // MARK: - 图片在左
  func createLeftButton() {
    let btn = getButton()
    btn.snp.makeConstraints { (make) in
      make.top.equalTo(80)
      make.centerX.equalToSuperview()
      make.height.equalTo(44)
    }
    btn.layoutIfNeeded()
    let imgWidth:CGFloat = btn.imageView?.bounds.size.width ?? 0
    let labWidth:CGFloat = btn.titleLabel?.bounds.size.width ?? 0
    btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 2*margin, bottom: 0, right: margin)
    btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: margin, bottom: 0, right: 0)
    btn.snp.makeConstraints { (make) in
      make.width.equalTo(imgWidth + labWidth + 3*margin)
    }
  }
  
  // MARK: - 图片在右
  func createRightButton() {
    let btn = getButton()
    btn.snp.makeConstraints { (make) in
      make.top.equalTo(130)
      make.centerX.equalToSuperview()
      make.height.equalTo(44)
    }
    btn.layoutIfNeeded()
    let imgWidth:CGFloat = btn.imageView?.bounds.size.width ?? 0
    let labWidth:CGFloat = btn.titleLabel?.bounds.size.width ?? 0
    btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imgWidth, bottom: 0, right: imgWidth+margin)
    btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: labWidth + margin, bottom: 0, right: -margin)
    btn.snp.makeConstraints { (make) in
      make.width.equalTo(imgWidth + labWidth + 3*margin)
    }
  }

  // MARK: - 图片在上
  func createTopButton() {
    let btn = getButton()
    btn.snp.makeConstraints { (make) in
      make.top.equalTo(220)
      make.centerX.equalToSuperview()
    }
    btn.layoutIfNeeded()
    let imgWidth:CGFloat = btn.imageView?.bounds.size.width ?? 0
    let imgHeight:CGFloat = btn.imageView?.bounds.size.height ?? 0
    let labWidth:CGFloat = btn.titleLabel?.bounds.size.width ?? 0
    let labHeight:CGFloat = btn.titleLabel?.bounds.size.height ?? 0
    let width:CGFloat = max(labWidth, imgWidth)
    btn.titleEdgeInsets = UIEdgeInsets(top: margin+imgHeight, left: -imgWidth, bottom: 0, right: 0)
    btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: labHeight+2*margin, right: 0)
    btn.imageView?.snp.makeConstraints { (make) in
      make.centerX.equalToSuperview()
    }
    btn.snp.makeConstraints { (make) in
      make.height.equalTo(imgHeight + labHeight + 3*margin)
      make.width.equalTo(width + 2*margin)
    }
  }
  
  // MARK: - 图片在下
  func createBottomButton() {
    let btn = getButton()
    btn.snp.makeConstraints { (make) in
      make.top.equalTo(300)
      make.centerX.equalToSuperview()
    }
    btn.layoutIfNeeded()
    let imgWidth:CGFloat = btn.imageView?.bounds.size.width ?? 0
    let imgHeight:CGFloat = btn.imageView?.bounds.size.height ?? 0
    let labWidth:CGFloat = btn.titleLabel?.bounds.size.width ?? 0
    let labHeight:CGFloat = btn.titleLabel?.bounds.size.height ?? 0
    let width:CGFloat = max(labWidth, imgWidth)
    btn.titleEdgeInsets = UIEdgeInsets(top: margin, left: -imgWidth, bottom: 2*margin + imgHeight, right: 0)
    btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    btn.imageView?.snp.makeConstraints({ (make) in
      make.centerX.equalToSuperview()
      make.bottom.equalTo(-margin)
    })
    btn.snp.makeConstraints { (make) in
      make.height.equalTo(imgHeight + labHeight + 3*margin)
      make.width.equalTo(width + 2*margin)
    }
  }
  
  func getButton() -> UIButton {
    let btn = UIButton(type: .custom)
    btn.backgroundColor = .cyan
    btn.setTitle("自适应宽度", for: .normal)
    btn.setTitleColor(.black, for: .normal)
    btn.setImage(UIImage(named: "icon_delete"), for: .normal)
    self.view.addSubview(btn)
    return btn
  }

}
