//
//  ActivityContentViewController.m
//  witmob_office
//
//  Created by marcus wang on 12-1-29.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import "ActivityContentViewController.h"
@implementation ActivityContentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title=@"编写登陆模块";
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
    //添加保存按钮
    UIBarButtonItem *barButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"Complete" style:UIBarButtonItemStyleBordered target:self action:@selector(onClickComplete:)];
    [self.navigationItem setRightBarButtonItem:barButtonItem];
    
    [rootView addSubview:activityTaskDetailTableView];
    
}
-(void)onClickComplete:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
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

-(IBAction)onChangeSegments:(id)sender
{
    [self performSelector:@selector(removeChildsView:) withObject:rootView];
    UISegmentedControl *segments=(UISegmentedControl *)sender;
    switch ([segments selectedSegmentIndex]) {
        case 0:
            [rootView addSubview:activityTaskDetailTableView];
            break;
        case 1:
            [rootView addSubview:commentTableView];
            break;
        case 2:
            break;
        default:
            break;
    }
}
-(void)removeChildsView:(UIView *)view
{
    for (UIView *v in view.subviews) {
        [v removeFromSuperview];
    }
}
@end
