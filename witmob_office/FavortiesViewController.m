//
//  FavortiesViewController.m
//  Witmob
//
//  Created by marcus wang on 12-1-28.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import "FavortiesViewController.h"
#import "LastViewedTableCell.h"
#import "UserStatusViewController.h"
@implementation FavortiesViewController

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
	static NSString *tableIdentifier = @"LastViewedTableCell";
	LastViewedTableCell *cell = (LastViewedTableCell *)[tableView dequeueReusableCellWithIdentifier:tableIdentifier];
	if (cell == nil) {
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"LastViewedTableCell" owner:self options:nil];
        cell = [array objectAtIndex:0];
	}
	
    return cell;
	
}
//定义有多少行
-(NSInteger) tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section 
{
	return 13;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UserStatusViewController *userStatusViewController=[[UserStatusViewController alloc] initWithNibName:@"UserStatusViewController" bundle:nil];
    [self.navigationController pushViewController:userStatusViewController animated:YES];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 62;
}

-(IBAction)onChangeSegments:(id)sender
{
    UISegmentedControl *segment=(UISegmentedControl *)sender;
    switch ([segment selectedSegmentIndex]) {
        case 0:
            rootTableView.hidden=NO;
            break;
        case 1:
            rootTableView.hidden=YES;
            break;
        default:
            break;
    }
}

@end
