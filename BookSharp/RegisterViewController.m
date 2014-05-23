//
//  RegisterViewController.m
//  BookSharp
//
//  Created by qsi-imac on 14-5-23.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

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
    
    
    self.userNameField = [[UITextField alloc]initWithFrame:CGRectMake(REG_TextField_X, REG_TextField_Y, REG_TextField_WIDTH, REG_TextField_HEIGHT)];
    self.userNameField.borderStyle = UITextBorderStyleBezel;
    self.userNameField.background = [[UIImage imageNamed:@"TFBG.png"] stretchableImageWithLeftCapWidth:8 topCapHeight:30];
    self.userNameField.placeholder = @"6-9位字母或者数字组成";
    self.userNameField.font = [UIFont fontWithName:@"Verdana" size:16.0];
    self.userNameField.adjustsFontSizeToFitWidth = YES;
    self.userNameField.minimumFontSize = 2.0;
    self.userNameField.clearsOnBeginEditing = YES;
    self.userNameField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.userNameField.keyboardType = UIKeyboardTypeDefault;
    self.userNameField.delegate = self;
    [control addSubview:self.userNameField];
    
    
    self.realNameField = [[UITextField alloc]initWithFrame:CGRectMake(REG_TextField_X, REG_TextField_Y+50, REG_TextField_WIDTH, REG_TextField_HEIGHT)];
    self.realNameField.borderStyle = UITextBorderStyleBezel;
    self.realNameField.background = [[UIImage imageNamed:@"TFBG.png"] stretchableImageWithLeftCapWidth:8 topCapHeight:30];
    self.realNameField.placeholder = @"真实姓名";
    self.realNameField.font = [UIFont fontWithName:@"Verdana" size:16.0];
    self.realNameField.adjustsFontSizeToFitWidth = YES;
    self.realNameField.minimumFontSize = 2.0;
    self.realNameField.clearsOnBeginEditing = YES;
    self.realNameField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.realNameField.keyboardType = UIKeyboardTypeDefault;
    self.realNameField.delegate = self;
    [control addSubview:self.realNameField];

    
    
    self.passField = [[UITextField alloc]initWithFrame:CGRectMake(REG_TextField_X, REG_TextField_Y+100, REG_TextField_WIDTH, REG_TextField_HEIGHT)];
    self.passField.borderStyle = UITextBorderStyleBezel;
    self.passField.background = [[UIImage imageNamed:@"TFBG.png"] stretchableImageWithLeftCapWidth:8 topCapHeight:30];
    self.passField.placeholder = @"9-13位字母或者数字组成";
    self.passField.font = [UIFont fontWithName:@"Verdana" size:16.0];
    self.passField.adjustsFontSizeToFitWidth = YES;
    self.passField.minimumFontSize = 2.0;
    self.passField.clearsOnBeginEditing = YES;
    self.passField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.passField.keyboardType = UIKeyboardTypeDefault;
    self.passField.secureTextEntry=YES;
    //self.passField.tag = 2;
    self.passField.delegate = self;
    [control addSubview:self.passField];
    
    self.repassField = [[UITextField alloc]initWithFrame:CGRectMake(REG_TextField_X, REG_TextField_Y+150, REG_TextField_WIDTH, REG_TextField_HEIGHT)];
    self.repassField.borderStyle = UITextBorderStyleBezel;
    self.repassField.background = [[UIImage imageNamed:@"TFBG.png"] stretchableImageWithLeftCapWidth:8 topCapHeight:30];
    self.repassField.placeholder = @"9-13位字母或者数字组成";
    self.repassField.font = [UIFont fontWithName:@"Verdana" size:16.0];
    self.repassField.adjustsFontSizeToFitWidth = YES;
    self.repassField.minimumFontSize = 2.0;
    self.repassField.clearsOnBeginEditing = YES;
    self.repassField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.repassField.keyboardType = UIKeyboardTypeDefault;
    self.repassField.secureTextEntry=YES;
    //self.repassField.tag = 2;
    self.repassField.delegate = self;
    [control addSubview:self.repassField];
    
    
    
    self.emailField = [[UITextField alloc]initWithFrame:CGRectMake(REG_TextField_X, REG_TextField_Y+200, REG_TextField_WIDTH, REG_TextField_HEIGHT)];
    self.emailField.borderStyle = UITextBorderStyleBezel;
    self.emailField.background = [[UIImage imageNamed:@"TFBG.png"] stretchableImageWithLeftCapWidth:8 topCapHeight:30];
    self.emailField.placeholder = @"邮箱";
    self.emailField.font = [UIFont fontWithName:@"Verdana" size:16.0];
    self.emailField.adjustsFontSizeToFitWidth = YES;
    self.emailField.minimumFontSize = 2.0;
    self.emailField.clearsOnBeginEditing = YES;
    self.emailField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.emailField.keyboardType = UIKeyboardTypeDefault;
    self.emailField.secureTextEntry=YES;
    //self.emailField.tag = 2;
    self.emailField.delegate = self;
    [control addSubview:self.emailField];
    
    self.addressField = [[UITextField alloc]initWithFrame:CGRectMake(REG_TextField_X, REG_TextField_Y+250, REG_TextField_WIDTH, REG_TextField_HEIGHT)];
    self.addressField.borderStyle = UITextBorderStyleBezel;
    self.addressField.background = [[UIImage imageNamed:@"TFBG.png"] stretchableImageWithLeftCapWidth:8 topCapHeight:30];
    self.addressField.placeholder = @"地址";
    self.addressField.font = [UIFont fontWithName:@"Verdana" size:16.0];
    self.addressField.adjustsFontSizeToFitWidth = YES;
    self.addressField.minimumFontSize = 2.0;
    self.addressField.clearsOnBeginEditing = YES;
    self.addressField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.addressField.keyboardType = UIKeyboardTypeDefault;
    self.addressField.secureTextEntry=YES;
    //self.emailField.tag = 2;
    self.addressField.delegate = self;
    [control addSubview:self.addressField];

    
    self.mobileField = [[UITextField alloc]initWithFrame:CGRectMake(REG_TextField_X, REG_TextField_Y+300, REG_TextField_WIDTH, REG_TextField_HEIGHT)];
    self.mobileField.borderStyle = UITextBorderStyleBezel;
    self.mobileField.background = [[UIImage imageNamed:@"TFBG.png"] stretchableImageWithLeftCapWidth:8 topCapHeight:30];
    self.mobileField.placeholder = @"手机号码";
    self.mobileField.font = [UIFont fontWithName:@"Verdana" size:16.0];
    self.mobileField.adjustsFontSizeToFitWidth = YES;
    self.mobileField.minimumFontSize = 2.0;
    self.mobileField.clearsOnBeginEditing = YES;
    self.mobileField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.mobileField.keyboardType = UIKeyboardTypeDefault;
    self.mobileField.secureTextEntry=YES;
    //self.emailField.tag = 2;
    self.mobileField.delegate = self;
    [control addSubview:self.mobileField];

    
    
    UIButton *regBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    regBtn.frame=CGRectMake(REG_BTN_X, REG_BTN_Y,REG_BTN_WIDTH, REG_BTN_HEIGHT);
    [regBtn setBackgroundImage:[[UIImage imageNamed:@"buttonBG.png"] stretchableImageWithLeftCapWidth:8 topCapHeight:30] forState:UIControlStateNormal];
    [regBtn setTitle:@"注册" forState:UIControlStateNormal];
    regBtn.titleLabel.font = [UIFont systemFontOfSize: 16.0];
    [regBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [regBtn addTarget:self action:@selector(regEvent) forControlEvents:UIControlEventTouchUpInside];
    [control addSubview:regBtn];
    
    
    UIButton *backBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    backBtn.frame=CGRectMake(REG_BTN_X+REG_BTN_WIDTH,REG_BTN_Y,REG_BTN_WIDTH, REG_BTN_HEIGHT);
    [backBtn setBackgroundImage:[[UIImage imageNamed:@"buttonBG.png"] stretchableImageWithLeftCapWidth:8 topCapHeight:30] forState:UIControlStateNormal];
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    backBtn.titleLabel.font = [UIFont systemFontOfSize: 16.0];
    [backBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    [control addSubview:backBtn];
    
    //添加背景触事件
    [control addTarget:self action:@selector(backGroundPress) forControlEvents:UIControlEventTouchDown];
    self.view=control;
    
    
}

#pragma mark - 注册按钮触发方法
-(void)regEvent
{
    if ([[self removespace:_userNameField ] isEqualToString:@""] || [[self removespace:_passField ] isEqualToString:@""] )
    {
        NSLog(@"用户名或密码不能为空");
        [self showInfo:@"提示" show_message:@"用户名或密码不能为空"];
    }
    //判断两次输入密码是否相同?----目前是在webService端负责
    else if([[self removespace:_passField] isEqualToString:[self removespace:_repassField]])
    {
        //首先把汉字输入的名字转换成正确格式
        NSString *nameStr = [self.userNameField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        [nameStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        NSString *nameStr1 = [self.realNameField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        [nameStr1 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        NSString *userurl = [NSString stringWithFormat:@"http://192.168.1.110/LoginWebService.asmx/LoginToSystem?userName=%@&realName=%@&password=%@&confirmPass=%@&email=%@&address=%@&mobileNum=%@",nameStr,nameStr1,[self removespace:_passField],[self removespace:_repassField],[self removespace:_emailField],[self removespace:_addressField],[self removespace:_mobileField]];
        myHttpRequest *myRequest = [[myHttpRequest alloc]init];
        myRequest.delegate = self;
        //开启网络
        [myRequest startwork:userurl];
    }
    else
    {
        NSLog(@"两次密码不一致");
        [self showInfo:@"提示" show_message:@"两次密码不一致"];
    }
    
}

-(void)goBack
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


#pragma mark - 去掉textField的前后空格
-(NSString *)removespace:(UITextField *)textfield
{
    return  [textfield.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

#pragma mark - 提示信息
-(void)showInfo:(NSString *)titles show_message:(NSString *)messages
{
    self.alert = [[UIAlertView alloc]initWithTitle:titles message:messages delegate:self
                                 cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [self.alert show];
}
#pragma mark - 背景触犯方法
-(void)backGroundPress
{
    [UIView beginAnimations:@"appear" context:nil];
    [UIView setAnimationDuration:0.5f];
    [self.userNameField resignFirstResponder];
    [self.realNameField resignFirstResponder];
    [self.passField resignFirstResponder];
    [self.repassField resignFirstResponder];
    [self.emailField resignFirstResponder];
    [self.addressField resignFirstResponder];
    [self.mobileField resignFirstResponder];
    [UIView commitAnimations];
    
}

-(void)setmutData:(NSMutableData *)mutdata
{
    NSLog(@"回传数据");
    NSStringEncoding enc=CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingUTF8);
    
    NSString *str = [[NSString alloc]initWithData:mutdata encoding:enc];
    if([str isEqualToString:@"添加失败"])
    {
        [self showInfo:@"提示" show_message:@"用户名以存在"];
        
    }
    else
    {
        [self showInfo:@"提示" show_message:@"注册成功"];
        [self goBack];
        
    }
}



@end
