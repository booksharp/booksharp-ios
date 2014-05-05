//
//  ShelfViewController.m
//  BookSharp
//
//  Created by qsi-imac on 14-5-5.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import "ShelfViewController.h"

@interface ShelfViewController ()

@end

@implementation ShelfViewController

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
    //布置界面布局
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
    self.navigationItem.title=@"我的书架";
    //退出按钮
    UIBarButtonItem *logOut=[[UIBarButtonItem alloc]initWithTitle:@"退出" style:UIBarButtonItemStyleBordered target:self action:@selector(logout)];
    //书架背景图片
    UIImageView *bg=[[UIImageView alloc]init];
    //3.5寸7.0以上版本
    if(self.sysVersion>=7.0)
    {
        bg.frame=CGRectMake(0, 64, 320, 480);
        logOut.tintColor=[UIColor blackColor];
    }
    //低于7.0版本
    else
    {
        bg.frame=CGRectMake(0, 0, 320, 480);
    }
    [bg setImage:[UIImage imageNamed:@"ShelfBG.jpg"]];
    self.navigationItem.rightBarButtonItem=logOut;
    [self.view addSubview:bg];
    
}
#pragma mark - 退出用户'
-(void)logout
{
    
}


@end
