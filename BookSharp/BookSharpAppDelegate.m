//
//  BookSharpAppDelegate.m
//  BookSharp
//
//  Created by qsi-imac on 14-5-4.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "BookSharpAppDelegate.h"

@implementation BookSharpAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    LoginViewController *login=[[LoginViewController alloc]init];
    
    //[self setLayout];
    self.window.rootViewController=login;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

#pragma mark - 界面设置
-(void)setLayout
{
    //获得系统版本
    self.sysVersion=[[[UIDevice currentDevice]systemVersion] floatValue];
    
    //实例化四个分界面
    ShelfViewController *shelf=[[ShelfViewController alloc]init];
    BookShopViewController *bookShop=[[BookShopViewController alloc]init];
    UserViewController *user=[[UserViewController alloc]init];
    SettingViewController *setting=[[SettingViewController alloc]init];
    
    //底部tabBar设定
    self.bottomTab = [[UITabBarController alloc]init];
    NSMutableArray *viewControllers = [[NSMutableArray alloc] initWithCapacity:4];
    NSArray *views = @[shelf,bookShop,user,setting];
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
    shelf.tabBarItem = shelfTab;
    bookShop.tabBarItem = bookShopTab;
    user.tabBarItem = userTab;
    setting.tabBarItem = settingTab;
    self.bottomTab.viewControllers = viewControllers;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
