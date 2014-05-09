//
//  WelcomeViewController.m
//  BookSharp
//
//  Created by qsi-imac on 14-5-6.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import "WelcomeViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

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
    XLCycleScrollView *XLCScroll=[[XLCycleScrollView alloc]initWithFrame:self.view.bounds];
    XLCScroll.delegate=self;
    XLCScroll.datasource=self;
    [self.view addSubview:XLCScroll];

}
#pragma mark - XLCycleScrollViewDelegate
- (NSInteger)numberOfPages
{
    return 4;
}
- (UIView *)pageAtIndex:(NSInteger)index
{
    //设置图片
    UIImageView *imge = [[UIImageView alloc] initWithFrame:self.view.bounds];
    switch (index) {
        case 0:
            imge.image = [UIImage imageNamed:@"1.jpg"];
            break;
        case 1:
            imge.image = [UIImage imageNamed:@"2.jpg"];
            break;
        case 2:
            imge.image = [UIImage imageNamed:@"3.jpg"];
            break;
        case 3:
        {
            imge.image = [UIImage imageNamed:@"4.jpg"];
            [imge setUserInteractionEnabled:YES];
            UIButton *todo = [UIButton buttonWithType:UIButtonTypeCustom];
            todo.frame = CGRectMake(170, 370, 125, 35);
            [todo setBackgroundImage:[UIImage imageNamed:@"btnBG.jpg"] forState:UIControlStateNormal];
            [todo setTitle:@"开始体验" forState:UIControlStateNormal];
            [todo addTarget:self action:@selector(toDoNext) forControlEvents:UIControlEventTouchUpInside];
            [imge addSubview:todo];
            break;
        }
        default:
            break;
    }
    return imge;
}
#pragma mark - 开始体验btn触发方法
-(void)toDoNext
{
    LoginViewController *login=[[LoginViewController alloc]init];
    [self presentViewController:login animated:YES completion:nil];
    
}

@end
