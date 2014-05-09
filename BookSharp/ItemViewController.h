//
//  ItemViewController.h
//  BookSharp
//
//  Created by qsi-imac on 14-5-6.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import <UIKit/UIKit.h>

//四个主要分界面
#import "ShelfViewController.h"
#import "BookShopViewController.h"
#import "UserViewController.h"
#import "SettingViewController.h"

@interface ItemViewController : UITabBarController


@property (nonatomic,assign) float sysVersion;

@property (nonatomic,strong) ShelfViewController *shelf;

-(void)passUserName:(NSString *)Name;

@end
