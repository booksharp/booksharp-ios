//
//  ViewFrame.h
//  BookSharp
//
//  Created by qsi-imac on 14-5-20.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import <Foundation/Foundation.h>


//Viewframe
//控件x,y坐标
#define Control_X  0
#define Control_Y  0
//背景高宽
#define DEVICE_FRAME_HEIGHT [[UIScreen mainScreen] bounds].size.height
//背景宽度
#define DEVICE_FRAME_WIDTH [[UIScreen mainScreen] bounds].size.width
//背景图片frame
#define BG_FRAME CGRectMake(Control_X, Control_Y, DEVICE_FRAME_WIDTH, DEVICE_FRAME_HEIGHT)

//retina屏




//====================================================
// iPhone---书架视图的部分frame的定义
//====================================================


//imageView1的坐标
#define BOOKSHELF_IMAGE_1_FRAME CGRectMake(Control_X, Control_Y, DEVICE_FRAME_WIDTH, DEVICE_FRAME_HEIGHT)
//imageView2的坐标
#define BOOKSHELF_IMAGE_2_FRAME CGRectMake(Control_X+320, Control_Y, DEVICE_FRAME_WIDTH, DEVICE_FRAME_HEIGHT)
//imageView3的坐标
#define BOOKSHELF_IMAGE_3_FRAME CGRectMake(Control_X+640, Control_Y, DEVICE_FRAME_WIDTH, DEVICE_FRAME_HEIGHT)
//pageControl坐标
#define BOOKSHELF_PAGECONTROL_X 0
#define BOOKSHELF_PAGECONTROL_Y 410
#define BOOKSHELF_PAGECONTROL_WIDTH 320
#define BOOKSHELF_PAGECONTROL_HEIGHT 30

#define BOOKSHELF_PAGECONTROL_DEFAULT_FRAME CGRectMake(BOOKSHELF_PAGECONTROL_X, BOOKSHELF_PAGECONTROL_Y, BOOKSHELF_PAGECONTROL_WIDTH, BOOKSHELF_PAGECONTROL_HEIGHT)
//低于7.0版本的坐标
#define BOOKSHELF_PAGECONTROL_NEW_FRAME CGRectMake(BOOKSHELF_PAGECONTROL_X, BOOKSHELF_PAGECONTROL_Y+27, BOOKSHELF_PAGECONTROL_WIDTH,BOOKSHELF_PAGECONTROL_HEIGHT)


//====================================================
// iPhone---登录/注册视图的部分frame的定义
//====================================================

#define IMGVIEW_PRE_FRAME CGRectMake(30, 130, 260, 185)


@interface ViewFrame : NSObject

@end
