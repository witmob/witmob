//
//  ActivityTableCellView.m
//  witmob_office
//
//  Created by marcus wang on 12-1-29.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import "ActivityTableCellView.h"
#import "Activity.h"
@implementation ActivityTableCellView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)onShowCell:(Activity *)activity
{
    [iconImage setImage:[UIImage imageNamed:activity.icon]];
    [typelable setText:activity.type];
    [authorLable setText:[NSString stringWithFormat:@"by %@ in ios",activity.author]];
}
@end
