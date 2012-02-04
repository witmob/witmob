//
//  ActivityViewController.h
//  Witmob
//
//  Created by marcus wang on 12-1-28.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityViewController : UIViewController
<UITableViewDelegate,UITableViewDataSource>
{
    __weak IBOutlet UITableView *rootTableView;
    
    NSArray *rootDictionary;
    
}

@end
