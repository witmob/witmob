//
//  ActivityContentViewController.h
//  witmob_office
//
//  Created by marcus wang on 12-1-29.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommentTableView.h"
#import "ActivityTaskDetailTableView.h"
@interface ActivityContentViewController : UIViewController
{
     IBOutlet UIView *rootView;
     IBOutlet CommentTableView *commentTableView;
     IBOutlet ActivityTaskDetailTableView *activityTaskDetailTableView;
}

-(IBAction)onChangeSegments:(id)sender;

@end
