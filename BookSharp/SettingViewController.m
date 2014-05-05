//
//  SettingViewController.m
//  BookSharp
//
//  Created by qsi-imac on 14-5-5.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //获得系统版本
    self.sysVersion=[[[UIDevice currentDevice]systemVersion] floatValue];
    [self setLayout];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 界面布局
-(void)setLayout
{
    //导航标题
    self.navigationItem.title=@"设定";
    //退出按钮
    UIBarButtonItem *logOut=[[UIBarButtonItem alloc]initWithTitle:@"退出" style:UIBarButtonItemStyleBordered target:self action:@selector(logout)];
    //3.5寸7.0以上版本
    if(self.sysVersion>=7.0)
    {
        logOut.tintColor=[UIColor blackColor];
    }
    self.navigationItem.rightBarButtonItem=logOut;
}

#pragma mark - 退出用户
-(void)logout
{
    
}


@end
