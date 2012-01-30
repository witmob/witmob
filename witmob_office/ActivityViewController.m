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
#import "Activity.h"
@implementation ActivityViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
       
        
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        rootDictionary=[[NSMutableDictionary alloc] initWithCapacity:1];
        
        NSMutableArray *array=[NSMutableArray array];
        Activity *activity=[[Activity alloc] init];
        [activity setIcon:@"posted_small.png"];
        [activity setAuthor:@"Marshal Wu"];
        [activity setContent:@"Marshal Wu write code for ios project"];
        [activity setType:@"Posted"];
        [array addObject:activity];
        
        Activity *activity1=[[Activity alloc] init];
        [activity1 setIcon:@"task_small.png"];
        [activity1 setAuthor:@"JunWang"];
        [activity1 setContent:@"编写登陆模块"];
        [activity1 setType:@"Reopened"];
        [array addObject:activity1];
        
        Activity *activity2=[[Activity alloc] init];
        [activity2 setIcon:@"task_small.png"];
        [activity2 setAuthor:@"Marshal Wu"];
        [activity2 setContent:@"编写登陆模块"];
        [activity2 setType:@"Assigned"];
        [array addObject:activity2];
        
        Activity *activity3=[[Activity alloc] init];
        [activity3 setIcon:@"task_small.png"];
        [activity3 setAuthor:@"Marshal Wu"];
        [activity3 setContent:@"Marshal Wu write code for ios project"];
        [activity3 setType:@"Posted"];
        [array addObject:activity3];
        
        Activity *activity4=[[Activity alloc] init];
        [activity4 setIcon:@"task_small.png"];
        [activity4 setAuthor:@"Marshal Wu"];
        [activity4 setContent:@"Marshal Wu write code for ios project"];
        [activity4 setType:@"Modified"];
        [array addObject:activity4];
        
        [rootDictionary setObject:array forKey:@"3 Days Ago"];
        NSMutableArray *array1=[NSMutableArray array];
        Activity *activity5=[[Activity alloc] init];
        [activity5 setIcon:@"newworkspace_small.png"];
        [activity5 setAuthor:@"Marshal Wu"];
        [activity5 setContent:@"New Workspace Created"];
        [activity5 setType:@"Added"];
        [array1 addObject:activity5];
        
        [rootDictionary setObject:array1 forKey:@"4 Days Ago"];
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
    NSArray *array=[rootDictionary objectForKey:[[rootDictionary allKeys] objectAtIndex:indexPath.section]];
    [cell onShowCell:[array objectAtIndex:indexPath.row]];
    return cell;
	
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [[rootDictionary allKeys] count];
}
//定义有多少行
-(NSInteger) tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section 
{
    NSArray *array=[rootDictionary objectForKey:[[rootDictionary allKeys] objectAtIndex:section]];
	return [array count];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ActivityContentViewController *activityContentViewController=[[ActivityContentViewController alloc] initWithNibName:@"ActivityContentViewController" bundle:nil];
    [self.navigationController pushViewController:activityContentViewController animated:YES];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 62;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
  return [[rootDictionary allKeys] objectAtIndex:section];
}
@end
