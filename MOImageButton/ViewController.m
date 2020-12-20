//
//  ViewController.m
//  MOImageButton
//
//  Created by 莫晓卉 on 2018/12/4.
//  Copyright © 2018年 moxiaohui. All rights reserved.
//

#import "ViewController.h"
#import "MOOCImageButtonsView.h"
#import "MOImageButton-Swift.h"

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  MOOCImageButtonsView *ocView = [[MOOCImageButtonsView alloc] initWithFrame:CGRectMake(0, 100, 180, 500)];
  ocView.backgroundColor = [UIColor lightGrayColor];
  [self.view addSubview:ocView];
  
  MOSwiftImageButtonsView *swiftView = [[MOSwiftImageButtonsView alloc] initWithFrame:CGRectMake(200, 100, 180, 500)];
  swiftView.backgroundColor = [UIColor lightGrayColor];
  [self.view addSubview:swiftView];
}

@end
