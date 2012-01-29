//
//  FavortiesViewController.h
//  Witmob
//
//  Created by marcus wang on 12-1-28.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FavortiesViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate>
{
    
    IBOutlet UITableView *rootTableView;
    
}
-(IBAction)onChangeSegments:(id)sender;
@end
