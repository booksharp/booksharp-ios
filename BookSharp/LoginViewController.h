//
//  LoginViewController.h
//  BookSharp
//
//  Created by qsi-imac on 14-5-5.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemViewController.h"
#import "ViewFrame.h"

@interface LoginViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic,assign) float sysVersion;

@property (nonatomic,retain) UITextField *userField;
@property (nonatomic,retain) UITextField *passField;
@property (nonatomic,retain) UIAlertView *alert;
@property (nonatomic, retain) UIImageView *imgView;

//点击背景隐藏键盘方法
-(void)backGroundPress;
//登录按钮触发方法
-(void)loginBtnPress;
//注册按钮触发方法
-(void)registerBtnPress;
@end
