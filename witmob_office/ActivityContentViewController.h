//
//  ActivityContentViewController.h
//  witmob_office
//
//  Created by marcus wang on 12-1-29.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityContentViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate>
{
    __weak IBOutlet UITableView *rootTableView;
}

-(IBAction)onChangeSegments:(id)sender;

@end
