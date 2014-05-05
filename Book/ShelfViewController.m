//
//  ShelfViewController.m
//  Book
//
//  Created by qsi-imac on 14-5-4.
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
    // Do any additional setup after loading the view from its nib.
    [self setLayout];
}

-(void)setLayout
{
    //书架背景图片
    UIImageView *bg=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    [bg setImage:[UIImage imageNamed:@"shelfBG.jpg"]];
    [self.view addSubview:bg];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
