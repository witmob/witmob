//
//  RootMainViewController.h
//  Witmob
//
//  Created by marcus wang on 12-1-28.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootMainViewController : UIViewController

{
    
   __weak IBOutlet UITextField *userNameFiled;

    __weak IBOutlet UITextField *passwordFiled;
    
    __weak UITextField *activeField;
}

-(IBAction)onClickLoginButton:(id)sender;

@end
