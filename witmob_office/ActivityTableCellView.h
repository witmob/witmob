//
//  ActivityTableCellView.h
//  witmob_office
//
//  Created by marcus wang on 12-1-29.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Activity;
@interface ActivityTableCellView : UITableViewCell
{
    __weak IBOutlet UIImageView *iconImage;

    __weak IBOutlet UILabel *typelable;
    __weak IBOutlet UILabel *authorLable;
}
-(void)onShowCell:(Activity *)activity;
@end
