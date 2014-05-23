//
//  myHttpRequest.m
//  BookSharp
//
//  Created by qsi-imac on 14-5-23.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import "myHttpRequest.h"

@implementation myHttpRequest

-(void)startwork:(NSString *)userurl
{
    //构建URL
    NSURL *url = [NSURL URLWithString:userurl];
    //构建Request
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //建立连接
    NSURLConnection *conn = [[NSURLConnection alloc]initWithRequest:request delegate:self];
    
    if (conn) {
        //开启
        [conn start];
    }
}

#pragma mark - NSURLConnectionDelegate
//网络访问出现错误
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"网络错误%@",error);
}
//得到响应
#pragma mark - NSURLConnectionDataDelegate
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    NSLog(@"得到响应");
    _mutData = [[NSMutableData alloc]init];
}


//获取数据
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    //往_mutdata追加data数据
    [_mutData appendData:data];
}
//获取数据完成
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"网络访问获取数据完成");
    //判断一个对象能否响应一个方法
    if([self.delegate respondsToSelector:@selector(setmutData:)])
    {
        //执行setmyMutdata方法
        [self.delegate performSelector:@selector(setmutData:) withObject:_mutData];
    }
}


@end
