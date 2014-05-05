//
//  BookSharpAppDelegate.h
//  BookSharp
//
//  Created by qsi-imac on 14-5-4.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
//四个主要分界面
#import "ShelfViewController.h"
#import "BookShopViewController.h"
#import "UserViewController.h"
#import "SettingViewController.h"


#import "LoginViewController.h"
@interface BookSharpAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic,assign) float sysVersion;
@property (nonatomic,retain) UITabBarController *bottomTab;

@end
