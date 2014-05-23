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
    
    UIControl *control = [[UIControl alloc]initWithFrame:BG_FRAME];
    control.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"BG.png"]];

    self.imgView = [[UIImageView alloc]initWithFrame:CGRectMake(30, 130, 260, 185)];
    self.imgView.image = [[UIImage imageNamed:@"LoginBG.png"]stretchableImageWithLeftCapWidth:10 topCapHeight:189];
    [self.imgView setUserInteractionEnabled:YES];
    [control addSubview:self.imgView];
    
    
    UILabel *nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(90, 5, 80, 20)];
    nameLabel.text = @"会员登录";
    nameLabel.textColor = [UIColor whiteColor];
    nameLabel.backgroundColor = [UIColor clearColor];
    [self.imgView addSubview:nameLabel];
    
    
    self.userField = [[UITextField alloc]initWithFrame:CGRectMake(15, 50, 230, 30)];
    self.userField.borderStyle = UITextBorderStyleBezel;
    self.userField.background = [[UIImage imageNamed:@"TFBG.png"] stretchableImageWithLeftCapWidth:8 topCapHeight:30];
    self.userField.placeholder = @"Email/手机号";
    self.userField.font = [UIFont fontWithName:@"Verdana" size:16.0];
    self.userField.adjustsFontSizeToFitWidth = YES;
    self.userField.minimumFontSize = 2.0;
    self.userField.clearsOnBeginEditing = YES;
    self.userField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.userField.keyboardType = UIKeyboardTypeDefault;
    self.userField.delegate = self;
    [self.imgView addSubview:self.userField];
    
    
    self.passField = [[UITextField alloc]initWithFrame:CGRectMake(15, 95, 230, 30)];
    self.passField.borderStyle = UITextBorderStyleBezel;
    self.passField.background = [[UIImage imageNamed:@"TFBG.png"] stretchableImageWithLeftCapWidth:8 topCapHeight:30];
    self.passField.placeholder = @"请输入密码";
    self.passField.font = [UIFont fontWithName:@"Verdana" size:16.0];
    self.passField.adjustsFontSizeToFitWidth = YES;
    self.passField.minimumFontSize = 2.0;
    self.passField.clearsOnBeginEditing = YES;
    self.passField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.passField.keyboardType = UIKeyboardTypeDefault;
    self.passField.secureTextEntry=YES;
    self.passField.tag = 2;
    self.passField.delegate = self;
    [self.imgView addSubview:self.passField];
    
    UIButton *landed = [[UIButton alloc]initWithFrame:CGRectMake(15, 140, 100, 30)];
    [landed setBackgroundImage:[[UIImage imageNamed:@"buttonBG.png"] stretchableImageWithLeftCapWidth:8 topCapHeight:30] forState:UIControlStateNormal];
    [landed setTitle:@"登录" forState:UIControlStateNormal];
   landed.titleLabel.font = [UIFont systemFontOfSize: 16.0];
    [landed setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [landed addTarget:self action:@selector(loginBtnPress) forControlEvents:UIControlEventTouchUpInside];
    [self.imgView addSubview:landed];


    UIButton *registration = [[UIButton alloc]initWithFrame:CGRectMake(145, 140, 100, 30)];
    [registration setBackgroundImage:[[UIImage imageNamed:@"buttonBG.png"] stretchableImageWithLeftCapWidth:8 topCapHeight:30] forState:UIControlStateNormal];
    [registration setTitle:@"注册" forState:UIControlStateNormal];
    [registration setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    registration.titleLabel.font = [UIFont systemFontOfSize: 16.0];
    [registration addTarget:self action:@selector(registerBtnPress) forControlEvents:UIControlEventTouchUpInside];
    [self.imgView addSubview:registration];


    //3.5寸7.0以上版本
    if(self.sysVersion>=7.0)
    {

        
    }
    else
    {
            
    }
    
    //添加背景触事件
    [control addTarget:self action:@selector(backGroundPress) forControlEvents:UIControlEventTouchDown];
    self.view=control;
}
#pragma mark - 背景触犯方法
-(void)backGroundPress
{
    [UIView beginAnimations:@"appear" context:nil];
    [UIView setAnimationDuration:0.5f];
    [self.userField resignFirstResponder];
    [self.passField resignFirstResponder];
    
    self.imgView.frame = CGRectMake(30, 130, 260, 185);
    [UIView commitAnimations];
    
}
#pragma mark - UITextFieldDelegate方法
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [UIView beginAnimations:@"appear" context:nil];
    [UIView setAnimationDuration:0.5f];
    [self.imgView setFrame:CGRectMake(30, 130, 260, 185)];
    
    [self.userField resignFirstResponder];
    [self.passField resignFirstResponder];
    
    [UIView commitAnimations];
    return YES;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    //判断是否需要上移frame
    if ([textField tag] == 2&&DEVICE_FRAME_HEIGHT!=568)
    {
        [UIView beginAnimations:@"appear" context:nil];
        [UIView setAnimationDuration:0.5f];
        [self.imgView setFrame:CGRectMake(30, 70, 260, 185)];
        [UIView commitAnimations];
    }
    else
    {
        [UIView beginAnimations:@"appear" context:nil];
        [UIView setAnimationDuration:0.5f];
        [self.imgView setFrame:CGRectMake(30, 130, 260, 185)];
        [UIView commitAnimations];
    }
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    
    [textField resignFirstResponder];
}

#pragma mark - 登录按钮触发方法
-(void)loginBtnPress
{
    
    if ([[self removespace:_userField]isEqualToString:@""]||[[self removespace:_passField]isEqualToString:@""])
    {
        [self showInfo:@"提示" show_message:@"用户名或密码不能为空"];
    }
    else
    {
        NSString *userName=self.userField.text;
        NSString *passWord=self.passField.text;
        
        NSString *queryString = [NSString stringWithFormat:@"http://192.168.1.110/LoginWebService.asmx/LoginToSystem?userName=%@&password=%@",userName,passWord];
        NSURL *url = [NSURL URLWithString:queryString];
        NSMutableURLRequest *req = [NSMutableURLRequest requestWithURL:url];
        [req addValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
        [req addValue:0 forHTTPHeaderField:@"Content-Length"];
        [req setHTTPMethod:@"GET"];
        //设置请求超时为1分钟
        [req setTimeoutInterval:60];
        
        NSError *error = nil;
        
        NSHTTPURLResponse * response = nil;
        NSData   *data = [NSURLConnection sendSynchronousRequest:req
                                               returningResponse:&response
                                                           error:&error];
        
        //错误信息代码
        int errorCode = error.code;
        
        if (errorCode == -1001) {
            NSLog(@"网络连接超时，请确认是否已经连入网络。");
            return;
        }
        
        if (data != nil){
            NSLog(@"response = %@",[NSHTTPURLResponse localizedStringForStatusCode: [response statusCode]]);
            
            NSString *jsonString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"返回信息为：%@",jsonString);
            
            if(![@"null" isEqual:jsonString]){
                NSError *error;
                NSDictionary *loginInfoDic = [NSJSONSerialization JSONObjectWithData:data
                                                                             options:NSJSONReadingMutableContainers
                                                                               error:&error];
                NSDictionary *userInfo = [loginInfoDic objectForKey:@"Name"];
                NSLog(@"用户信息为[姓名：%@]",userInfo);
                
                //登陆成功
                //进入书架页面
                ItemViewController *main=[[ItemViewController alloc]init];
                [main passUserName:userName];
                [self presentViewController:main animated:YES completion:nil];
                
            }else{
                //登陆失败
                //···
            }
            
        }else {
            NSLog(@"%@", error);
        }
    }
}

#pragma mark - 注册按钮触发方法
-(void)registerBtnPress
{
    //进入注册页面
    RegisterViewController *regVC=[[RegisterViewController alloc]init];
    [self presentViewController:regVC animated:YES completion:nil];
}

#pragma mark - 提示信息
-(void)showInfo:(NSString *)titles show_message:(NSString *)messages
{
    self.alert = [[UIAlertView alloc]initWithTitle:titles message:messages delegate:self
                                 cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [self.alert show];
}

#pragma mark - 去掉textField的前后空格
-(NSString *)removespace:(UITextField *)textfield
{
    return  [textfield.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}
@end
