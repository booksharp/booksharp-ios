//
//  ShelfViewController.m
//  BookSharp
//
//  Created by qsi-imac on 14-5-5.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import "ShelfViewController.h"

#define IPHONE7_BG_FRAME CGRectMake(0, 60, 320, 480);
#define IPHONE6_BG_FRAME CGRectMake(0, 0, 320, 480);

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
    NSLog(@"%f-%f",self.view.frame.size.width,self.view.frame.size.height);
   
    //导航标题
    self.navigationItem.title=[self.userName stringByAppendingString:@"的书架1"];
    //退出按钮
    UIBarButtonItem *logOut=[[UIBarButtonItem alloc]initWithTitle:@"退出" style:UIBarButtonItemStyleBordered target:self action:@selector(logout)];
    
    // 设置分页页数
    int pageCount = 3;
    /*
     设置滚动视图
     */
    // 实例化并设置区域
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    // 开启分页属性
    [self.scrollView setPagingEnabled:YES];
    // 关闭水平滚动指示器
    self.scrollView.showsHorizontalScrollIndicator = NO;
    // 关闭垂直滚动指示器
    self.scrollView.showsVerticalScrollIndicator = NO;
    // 设置滚动区域
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * pageCount, 1);
    // 设置委托对象
    self.scrollView.delegate = self;
    
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    [imgView setImage:[UIImage imageNamed:@"ShelfBG.jpg"]];
    [self.scrollView addSubview:imgView];

    UIImageView *imgView1 = [[UIImageView alloc] initWithFrame:CGRectMake(320, 0, 320, 480)];
    [imgView1 setImage:[UIImage imageNamed:@"ShelfBG.jpg"]];
    [self.scrollView addSubview:imgView1];

    UIImageView *imgView2 = [[UIImageView alloc] initWithFrame:CGRectMake(640, 0, 320, 480)];
    [imgView2 setImage:[UIImage imageNamed:@"ShelfBG.jpg"]];
    
    [self.scrollView addSubview:imgView2];
    
    
    // 实例化并设置区域
    self.pageControl = [[UIPageControl alloc] init];
    self.pageControl.frame=CGRectMake(0, 410, 320, 30);
    /*
     设置分页控制器
     */
    self.pageControl.numberOfPages = pageCount;
    // 设置当前分页页数
    self.pageControl.currentPage = 0;
    // 添加事件
    [self.pageControl addTarget:self action:@selector(pageControlChange) forControlEvents:UIControlEventValueChanged];
    

    
    //3.5寸7.0以上版本
    if(self.sysVersion>=7.0)
    {
        logOut.tintColor=[UIColor blackColor];
        
        self.pageControl.currentPageIndicatorTintColor=[UIColor purpleColor];
    
    }
    //低于7.0版本
    else
    {
        self.pageControl.frame=CGRectMake(0, 345, 320, 30);
    }
    
    self.navigationItem.rightBarButtonItem=logOut;
    [self.view addSubview:self.scrollView];
    [self.view addSubview:self.pageControl];
    
}

#pragma mark - 退出用户
-(void)logout
{
    
}

// 分页控制器触发事件
-(void)pageControlChange
{
    // 获取当前的页数
    int page = self.pageControl.currentPage;
    // 获取滚动视图的frame
    CGRect frame = self.scrollView.frame;
    // 改变x值
    frame.origin.x = frame.size.width * page;
    frame.origin.y = 0;
    // 使滚动视图滚动到新的区域
    [self.scrollView scrollRectToVisible:frame animated:YES];
    
}
#pragma mark - UIScrollViewDelegate
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    /*
     通过数学方法获取当前页数
     */
    
    CGFloat width = self.scrollView.frame.size.width;
    
    int page = fabs(self.scrollView.contentOffset.x/width);
    NSString *number=[NSString stringWithFormat:@"%d",page+1];
    NSString *title=[self.userName stringByAppendingString:@"的书架"];
    title=[title stringByAppendingString:number];
    self.navigationItem.title=title;
    self.pageControl.currentPage = page;
}


@end
