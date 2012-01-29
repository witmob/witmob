//
//  ActivityViewController.m
//  Witmob
//
//  Created by marcus wang on 12-1-28.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import "ActivityViewController.h"
#import "ActivityTableCellView.h"
#import "ActivityContentViewController.h"
@implementation ActivityViewController

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
	static NSString *tableIdentifier = @"ActivityTableCell";
	ActivityTableCellView *cell = (ActivityTableCellView *)[tableView dequeueReusableCellWithIdentifier:tableIdentifier];
	if (cell == nil) {
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"ActivityTableCellView" owner:self options:nil];
        cell = [array objectAtIndex:0];
	}
	
    return cell;
	
}
//定义有多少行
-(NSInteger) tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section 
{
	return 3;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ActivityContentViewController *activityContentViewController=[[ActivityContentViewController alloc] initWithNibName:@"ActivityContentViewController" bundle:nil];
    [self.navigationController pushViewController:activityContentViewController animated:YES];
}
@end
