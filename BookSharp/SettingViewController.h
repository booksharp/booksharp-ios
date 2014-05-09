//
//  SettingViewController.h
//  BookSharp
//
//  Created by qsi-imac on 14-5-5.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingViewController : UIViewController 


@property (nonatomic,assign) float sysVersion;


//单双页分段控件触发事件
-(void)segControlChange:(id)sender;
//动画分段控件触发事件
-(void)AniSegControlChange:(id)sender;


@end
