//
//  ItemViewController.m
//  BookSharp
//
//  Created by qsi-imac on 14-5-6.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import "ItemViewController.h"

@interface ItemViewController ()

@end

@implementation ItemViewController

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
    // Do any additional setup after loading the view.
    [self setLayout];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 界面设置
-(void)setLayout
{
    //获得系统版本
    self.sysVersion=[[[UIDevice currentDevice]systemVersion] floatValue];
    
    //实例化四个分界面
    self.shelf=[[ShelfViewController alloc]init];
    BookShopViewController *bookShop=[[BookShopViewController alloc]init];
    UserViewController *user=[[UserViewController alloc]init];
    SettingViewController *setting=[[SettingViewController alloc]init];
    
    //底部tabBar设定
    NSMutableArray *viewControllers = [[NSMutableArray alloc] initWithCapacity:4];
    NSArray *views = @[self.shelf,bookShop,user,setting];
    for (UIViewController *viewController in views) {
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:viewController];
        [viewControllers addObject:nav];
        
    }
    UITabBarItem *shelfTab = [[UITabBarItem alloc] init];
    UITabBarItem *bookShopTab = [[UITabBarItem alloc] init];
    UITabBarItem *userTab=[[UITabBarItem alloc]init];
    UITabBarItem *settingTab=[[UITabBarItem alloc]init];
    
    shelfTab.title=@"书架";
    bookShopTab.title=@"书店";
    userTab.title=@"账户";
    settingTab.title=@"设定";
    //如果是7.0以上版本，tabBar则显示彩色图标
    if(self.sysVersion>=7.0)
    {
        shelfTab.image=[[UIImage imageNamed:@"kaya.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        bookShopTab.image=[[UIImage imageNamed:@"hanaguruma.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        userTab.image=[[UIImage imageNamed:@"maru.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        settingTab.image=[[UIImage imageNamed:@"fune.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
    }
    //低于7.0版本，tabBar则显示灰色图标
    else
    {
        shelfTab.image=[UIImage imageNamed:@"0029.png"];
        bookShopTab.image=[UIImage imageNamed:@"0298.png"];
        userTab.image=[UIImage imageNamed:@"0300.png"];
        settingTab.image=[UIImage imageNamed:@"0021.png"];
    }
    self.shelf.tabBarItem = shelfTab;
    bookShop.tabBarItem = bookShopTab;
    user.tabBarItem = userTab;
    setting.tabBarItem = settingTab;
    self.viewControllers = viewControllers;
}

#pragma mark - 传递userName
-(void)passUserName:(NSString *)Name
{
    self.shelf.userName=Name;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
