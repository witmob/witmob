//
//  CheckTools.m
//  witmob_office
//
//  Created by marcus wang on 12-1-30.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import "CheckTools.h"

@implementation CheckTools
+(BOOL)checkIsEmpty:(UITextField *)filed
{
    if ([filed.text length]) {
        return NO;
    }
    return YES;
}
@end
