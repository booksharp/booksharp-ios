//
//  LoginViewController.m
//  BookSharp
//
//  Created by qsi-imac on 14-5-5.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

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

#pragma mark - 界面设置
-(void)setLayout
{
    self.isMove=YES;
    UIControl *control = [[UIControl alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    
    UIImageView *logoImage=[[UIImageView alloc]initWithFrame:CGRectMake(45, 37, 230, 156)];
    logoImage.image=[UIImage imageNamed:@"tonbo.png"];
    [control addSubview:logoImage];
    
    UILabel *userLabel=[[UILabel alloc]initWithFrame:CGRectMake(45, 232, 60, 21)];
    userLabel.text=@"用户名";
    [control addSubview:userLabel];
    
    UILabel *passLabel=[[UILabel alloc]initWithFrame:CGRectMake(45, 283, 42, 21)];
    passLabel.text=@"密码";
    [control addSubview:passLabel];
    
    self.userField=[[UITextField alloc]initWithFrame:CGRectMake(112, 230, 177, 30)];
    [self.userField setBorderStyle:UITextBorderStyleRoundedRect];
    self.userField.tag=1;
    self.userField.delegate=self;
    [control addSubview:self.userField];
    
    self.passField=[[UITextField alloc]initWithFrame:CGRectMake(112, 281, 177, 30)];
    [self.passField setBorderStyle:UITextBorderStyleRoundedRect];
    self.passField.tag=2;
    self.passField.delegate=self;
    [control addSubview:self.passField];
    
    UIButton *loginButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    loginButton.frame=CGRectMake(112, 330, 46, 30);
    [loginButton setTitle:@"登录" forState:UIControlStateNormal];
    loginButton.tintColor=[UIColor blackColor];
    [control addSubview:loginButton];
    
    UIButton *registerButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    registerButton.frame=CGRectMake(185, 330, 46, 30);
    [registerButton setTitle:@"注册" forState:UIControlStateNormal];
    registerButton.tintColor=[UIColor blackColor];
    [control addSubview:registerButton];
    
    //添加背景触事件
    [control addTarget:self action:@selector(backGroundPress) forControlEvents:UIControlEventTouchDown];
    self.view=control;
}
#pragma mark - 背景触犯方法
-(void)backGroundPress
{
    [UIView beginAnimations:@"cc" context:nil];
    [UIView setAnimationDuration:0.1f];
    [self.userField resignFirstResponder];
    [self.passField resignFirstResponder];
    
    self.view.frame = CGRectMake(0, 0, 320, 480);
    [UIView commitAnimations];
    
}
#pragma mark - UITextFieldDelegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [UIView beginAnimations:@"cc" context:nil];
    [UIView setAnimationDuration:0.1f];
    
    [textField resignFirstResponder];
    self.view.frame = CGRectMake(0, 0, 320, 480);
    
    [UIView commitAnimations];
    return YES;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    if(textField.tag==2&&self.isMove==YES)
    {
        self.isMove=NO;
        [UIView beginAnimations:@"cc" context:nil];
        [UIView setAnimationDuration:0.1f];
        
        CGRect frame = self.view.frame;
        frame.origin.y -= 120;
        self.view.frame = frame;
        
        [UIView commitAnimations];
    }
}

@end
