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
//    //退出按钮
    UIBarButtonItem *logOut=[[UIBarButtonItem alloc]initWithTitle:@"退出" style:UIBarButtonItemStyleBordered target:self action:@selector(logout)];
    
    UIImageView *logoImage=[[UIImageView alloc]init];
    UILabel *Label=[[UILabel alloc]init];
    //帮助按钮
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    //安全退出按钮
    UIButton *safeLogout=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    //单双页分栏
    UISegmentedControl *segControl = [[UISegmentedControl alloc]initWithItems:nil];
    //动画分栏
    UISegmentedControl *AniSegControl = [[UISegmentedControl alloc]initWithItems:nil];
    
    UILabel *Label1=[[UILabel alloc]init];
    UILabel *Label2=[[UILabel alloc]init];
    
    //3.5寸7.0以上版本
    if(self.sysVersion>=7.0)
    {
     
        logOut.tintColor=[UIColor blackColor];
        
        logoImage.frame=CGRectMake(45, 70, 230, 150);
        Label.frame=CGRectMake(110, 234, 42, 20);
        [Label setTextAlignment:NSTextAlignmentRight];
        btn.frame=CGRectMake(155, 230, 60, 30);
        
        safeLogout.frame=CGRectMake(100, 350, 135, 40);
        
        [segControl setFrame:CGRectMake(120, 269, 150, 30)];
        [AniSegControl setFrame:CGRectMake(120, 309, 150, 30)];
        
        Label1.frame=CGRectMake(72, 271, 40, 20);
        Label2.frame=CGRectMake(72, 311, 40, 20);


    }
    //低于7.0版本
    else
    {
        logoImage.frame=CGRectMake(45, 20, 230, 150);
        Label.frame=CGRectMake(110, 182, 42, 20);
        btn.frame=CGRectMake(155, 180, 60, 30);
       
        safeLogout.frame=CGRectMake(100, 300, 135, 40);
        
        [segControl setFrame:CGRectMake(120, 219, 150, 30)];
        [AniSegControl setFrame:CGRectMake(120, 259, 150, 30)];
        
        Label1.frame=CGRectMake(72, 221, 40, 20);
        Label2.frame=CGRectMake(72, 261, 40, 20);


    }
    
    
    [safeLogout setBackgroundImage:[[UIImage imageNamed:@"buttonBG.png"] stretchableImageWithLeftCapWidth:2 topCapHeight:0] forState:UIControlStateNormal];
    
    self.navigationItem.rightBarButtonItem=logOut;
    //logo
    logoImage.image=[UIImage imageNamed:@"tonbo.png"];
    [self.view addSubview:logoImage];
    
    
    Label.text=@"V1.0";
    Label.font=[UIFont fontWithName:@"Verdana" size:15.0];
    [self.view addSubview:Label];
    
    Label1.text=@"页面";
    [self.view addSubview:Label1];
    
    Label2.text=@"动画";
    [self.view addSubview:Label2];
    
    //设置button的文字靠左显示
    btn.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
    [btn setTitle:@"帮助" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    
    [safeLogout setTitle:@"安全退出" forState:UIControlStateNormal];
    [self.view addSubview:safeLogout];
    
    
    [segControl insertSegmentWithTitle:@"单页" atIndex:0 animated:YES];
    [segControl insertSegmentWithTitle:@"双页" atIndex:1 animated:YES];
    segControl.segmentedControlStyle=UISegmentedControlStylePlain;
    [segControl setSelectedSegmentIndex:0];
    [segControl addTarget:self action:@selector(segControlChange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:segControl];
    
    [AniSegControl insertSegmentWithTitle:@"普通" atIndex:0 animated:YES];
    [AniSegControl insertSegmentWithTitle:@"动画" atIndex:1 animated:YES];
    AniSegControl.segmentedControlStyle=UISegmentedControlStylePlain;
    [AniSegControl setSelectedSegmentIndex:0];
    [AniSegControl addTarget:self action:@selector(AniSegControlChange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:AniSegControl];



}

#pragma mark - 退出用户
-(void)logout
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
#pragma mark - 控件触发方法
//分段控件触发事件
-(void)segControlChange:(id)sender
{
    UISegmentedControl *control=(UISegmentedControl *)sender;
    switch (control.selectedSegmentIndex) {
        case 0:
            //切换单页风格
            break;
        case 1:
            //切换双页风格
            break;
        default:
            break;
    }
    
}

-(void)AniSegControlChange:(id)sender
{
    UISegmentedControl *control=(UISegmentedControl *)sender;
    switch (control.selectedSegmentIndex) {
        case 0:
            //普通
            break;
        case 1:
            //动画
            break;
        default:
            break;
    }

}

@end
