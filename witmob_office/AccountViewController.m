//
//  AccountViewController.m
//  witmob_office
//
//  Created by marcus wang on 12-1-31.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import "AccountViewController.h"
#import "RootMainViewController.h"

@interface AccountViewController ()
-(void)showWarningView;
@end

@implementation AccountViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
#pragma tableView
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *tableIdentifier = @"accountcell";
	UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableIdentifier];
	if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableIdentifier];
	}
    switch ([indexPath row]) {
        case 0:
             [cell.textLabel setText:@"About Mobile"];
            break;
        case 1:
            [cell.textLabel setText:@"Log Out"];
            break;     
        default:
            break;
    }
    return cell;
}
//定义有多少行
-(NSInteger) tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section 
{
    return 2;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([indexPath row]==1) {
        [self showWarningView];
    }
    
}
-(void)showWarningView
{
    UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:@"警告" message:@"确实要推出吗?" delegate:self  cancelButtonTitle:@"取消" otherButtonTitles:@"确认", nil];
    [alertView show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{

    if (buttonIndex==1) {
        //到达登陆页面
        RootMainViewController *rootMainViewController=[[RootMainViewController alloc] initWithNibName:@"RootMainViewController" bundle:nil];
        self.view.window.rootViewController=rootMainViewController;
    }
}
@end
