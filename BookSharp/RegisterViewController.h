//
//  RegisterViewController.h
//  BookSharp
//
//  Created by qsi-imac on 14-5-23.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewFrame.h"
#import "myHttpRequest.h"


@interface RegisterViewController : UIViewController <UITextFieldDelegate,myHttp>



@property (nonatomic,assign) float sysVersion;

//UI
@property (nonatomic,retain) UITextField *userNameField;
@property (nonatomic,retain) UITextField *passField;
@property (nonatomic,retain) UITextField *repassField;
@property (nonatomic,retain) UITextField *emailField;
@property (nonatomic,retain) UITextField *realNameField;
@property (nonatomic,retain) UITextField *addressField;
@property (nonatomic,retain) UITextField *mobileField;

//
@property (nonatomic,retain) UIAlertView *alert;

//注册触发方法
-(void)regEvent;

@end
