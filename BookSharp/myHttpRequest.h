//
//  myHttpRequest.h
//  BookSharp
//
//  Created by qsi-imac on 14-5-23.
//  Copyright (c) 2014年 qsi-imac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "myHttp.h"

@interface myHttpRequest : NSObject<NSURLConnectionDelegate,NSURLConnectionDataDelegate>
@property (nonatomic, retain)NSMutableData *mutData;
@property (retain,nonatomic) id<myHttp> delegate;
-(void)startwork:(NSString *)userurl;
@end
