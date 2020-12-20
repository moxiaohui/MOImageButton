//
//  MOImageButton.h
//  MOImageButton
//
//  Created by 莫晓卉 on 2020/12/20.
//  Copyright © 2020 moxiaohui. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
  MOImageButtonTypeTop,
  MOImageButtonTypeBottom,
  MOImageButtonTypeLeft,
  MOImageButtonTypeRight
} MOImageButtonType;

@interface MOImageButton : UIButton

@property (nonatomic, assign) MOImageButtonType moImageType;
@property (nonatomic, assign) NSInteger moMargin; // 间距（上下左右的，label和image间的）默认：4

+ (instancetype)buttonWithType:(UIButtonType)buttonType imageType:(MOImageButtonType)imageType;

// 添加到父视图上后调用
- (void)moLayout;

@end

NS_ASSUME_NONNULL_END
