//
//  BookSharpAppDelegate.h
//  BookSharp
//
//  Created by qsi-imac on 14-5-4.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

//欢迎界面
#import "WelcomeViewController.h"
//注册登录界面
#import "LoginViewController.h"

@interface BookSharpAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
//版本记录
@property (nonatomic,assign) float sysVersion;

@end
