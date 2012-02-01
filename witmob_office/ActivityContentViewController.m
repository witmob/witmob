//
//  ActivityContentViewController.m
//  witmob_office
//
//  Created by marcus wang on 12-1-29.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import "ActivityContentViewController.h"
#import "ActivityContentTableViewCell.h"
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
#pragma tableView
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *tableIdentifier = @"ActivityContentTableViewCell";
	ActivityContentTableViewCell *cell = (ActivityContentTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableIdentifier];
	if (cell == nil) {
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"ActivityContentTableViewCell" owner:self options:nil];
        cell = [array objectAtIndex:0];
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
   
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 62;
}
-(IBAction)onChangeSegments:(id)sender
{
    UISegmentedControl *segments=(UISegmentedControl *)sender;
    switch ([segments selectedSegmentIndex]) {
        case 0:
            rootTableView.hidden=YES;
            break;
        case 1:
            rootTableView.hidden=NO;
            break;
        case 2:
            rootTableView.hidden=YES;
            break;
        default:
            break;
    }
}
@end
