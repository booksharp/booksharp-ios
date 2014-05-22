//
//  ShelfViewController.h
//  BookSharp
//
//  Created by qsi-imac on 14-5-5.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewFrame.h"


@interface ShelfViewController : UIViewController<UIScrollViewDelegate>

@property (nonatomic,assign) float sysVersion;
//用户名-----这里需要封装个用户信息类
@property (nonatomic,retain) NSString *userName;

@property (nonatomic,retain) UIScrollView *scrollView;
@property (nonatomic,retain) UIPageControl *pageControl;

-(void)pageControlChange;

@end
