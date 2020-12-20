//
//  MOOCImageButtonsView.m
//  MOImageButton
//
//  Created by 莫晓卉 on 2020/12/20.
//  Copyright © 2020 moxiaohui. All rights reserved.
//

#import "MOOCImageButtonsView.h"
#import "MOImageButton.h"
#import <Masonry/Masonry.h>

@implementation MOOCImageButtonsView

- (instancetype)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    [self setupView];
  }
  return self;
}

- (void)setupView {
  UILabel *titleLb = [[UILabel alloc] init];
  titleLb.text = @"Objective-C 版本";
  titleLb.textColor = [UIColor redColor];
  [self addSubview:titleLb];
  [titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
    make.top.mas_equalTo(10);
    make.centerX.mas_equalTo(0);
  }];
  
  // Objective-C 版本
  [self ocTopImageButton];    // 上
  [self ocBottomImageButton]; // 下
  [self ocLeftImageButton];   // 左边
  [self ocRightImageButton];  // 右边
}

#pragma mark - Objective-C 版本
- (MOImageButton *)ocImageButtonWithType:(MOImageButtonType)type {
  MOImageButton *btn = [MOImageButton buttonWithType:UIButtonTypeCustom imageType:type];
  btn.backgroundColor = [UIColor grayColor];
  [btn setTitle:@"自适应宽度" forState:UIControlStateNormal];
  [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
  [btn setImage:[UIImage imageNamed:@"icon_delete"] forState:UIControlStateNormal];
  [self addSubview:btn];
  return btn;
}
#pragma mark - 图片在上
- (void)ocTopImageButton {
  MOImageButton *btn = [self ocImageButtonWithType:MOImageButtonTypeTop];
  [btn mas_makeConstraints:^(MASConstraintMaker *make) {
    make.top.mas_equalTo(220);
    make.left.mas_equalTo(20);
  }];
  [btn moLayout];
}
#pragma mark - 图片在下
- (void)ocBottomImageButton {
  MOImageButton *btn = [self ocImageButtonWithType:MOImageButtonTypeBottom];
  [btn mas_makeConstraints:^(MASConstraintMaker *make) {
    make.top.mas_equalTo(300);
    make.left.mas_equalTo(20);
  }];
  [btn moLayout];
}
#pragma mark - 图片在左边
- (void)ocLeftImageButton {
  MOImageButton *btn = [self ocImageButtonWithType:MOImageButtonTypeLeft];
  [btn mas_makeConstraints:^(MASConstraintMaker *make) {
    make.top.mas_equalTo(80);
    make.left.mas_equalTo(20);
    make.height.mas_equalTo(44);
  }];
  [btn moLayout];
}
  
#pragma mark - 图片在右
- (void)ocRightImageButton {
  MOImageButton *btn = [self ocImageButtonWithType:MOImageButtonTypeRight];
  [btn mas_makeConstraints:^(MASConstraintMaker *make) {
    make.top.mas_equalTo(130);
    make.left.mas_equalTo(20);
    make.height.mas_equalTo(44);
  }];
  [btn moLayout];
}

@end
