//
//  MOImageButton.m
//  MOImageButton
//
//  Created by 莫晓卉 on 2020/12/20.
//  Copyright © 2020 moxiaohui. All rights reserved.
//

#import "MOImageButton.h"
#import <Masonry/Masonry.h>

@interface MOImageButton()
@end

@implementation MOImageButton

+ (instancetype)buttonWithType:(UIButtonType)buttonType imageType:(MOImageButtonType)imageType {
  MOImageButton *btn = [MOImageButton buttonWithType:buttonType];
  btn.moImageType = imageType;
  btn.moMargin = 4;
  return  btn;
}

- (void)moLayout {
  CGFloat imgWidth = self.imageView.bounds.size.width;
  CGFloat imgHeight = self.imageView.bounds.size.height;
  CGFloat labWidth = self.titleLabel.bounds.size.width;
  CGFloat labHeight = self.titleLabel.bounds.size.height;
  CGFloat width = MAX(labWidth, imgWidth);
  switch (self.moImageType) {
    case MOImageButtonTypeTop: {
      self.titleEdgeInsets = UIEdgeInsetsMake(self.moMargin + imgHeight, -imgWidth, 0, 0);
      self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, labHeight + 2*self.moMargin, 0);
      [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
      }];
      [self mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(imgHeight + labHeight + (3 * self.moMargin));
        make.width.mas_equalTo(width + (2 * self.moMargin));
      }];
    } break;
    case MOImageButtonTypeBottom: {
      self.titleEdgeInsets = UIEdgeInsetsMake(self.moMargin, -imgWidth, 2*self.moMargin + imgHeight , 0);
      self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
      [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
        make.bottom.mas_equalTo(-self.moMargin);
      }];
      [self mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(imgHeight + labHeight + (3 * self.moMargin));
        make.width.mas_equalTo(width + (2 * self.moMargin));
      }];
    } break;
    case MOImageButtonTypeLeft: {
      self.titleEdgeInsets = UIEdgeInsetsMake(0, 2*self.moMargin, 0, self.moMargin);
      self.imageEdgeInsets = UIEdgeInsetsMake(0, self.moMargin, 0, 0);
      [self mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(imgWidth + labWidth + (3 * self.moMargin));
      }];
    } break;
    case MOImageButtonTypeRight: {
      self.titleEdgeInsets = UIEdgeInsetsMake(0, -imgWidth, 0, imgWidth + self.moMargin);
      self.imageEdgeInsets = UIEdgeInsetsMake(0, labWidth + self.moMargin, 0, - self.moMargin);
      [self mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(imgWidth + labWidth + (3 * self.moMargin));
      }];
    } break;
    default: break;
  }
}


@end
