//
//  SearchViewController.h
//  Witmob
//
//  Created by marcus wang on 12-1-28.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController
{
   IBOutlet UITableView *rootTableView;
}

-(IBAction)onClickSearchButton:(id)sender;

@end
