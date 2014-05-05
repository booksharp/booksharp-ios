//
//  LoginViewController.h
//  BookSharp
//
//  Created by qsi-imac on 14-5-5.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic,assign) float sysVersion;

@property (nonatomic,retain) UITextField *userField;
@property (nonatomic,retain) UITextField *passField;
@property (nonatomic,assign) BOOL isMove;

-(void)backGroundPress;

@end
