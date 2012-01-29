//
//  RootMainViewController.m
//  Witmob
//
//  Created by marcus wang on 12-1-28.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import "RootMainViewController.h"
//#import "RootNavigationViewController.h"
//#import "HomeViewController.h"
//#import "ActivityViewController.h"
//#import "FavortiesViewController.h"
//#import "SearchViewController.h"
//#import "CollaboratorsViewController.h"

@implementation RootMainViewController

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

-(IBAction)onClickLoginButton:(id)sender
{

//    RootNavigationViewController *rootNavigationViewController=[[RootNavigationViewController alloc] initWithNibName:@"RootNavigationViewController" bundle:nil];
//    UINavigationController *navgationController=[[UINavigationController alloc] initWithRootViewController:rootNavigationViewController];
//    [self.view.window setRootViewController:navgationController];

    
//    UITabBarController *rootTabBarController=[[UITabBarController alloc] init];
//    
//    HomeViewController *homeViewController=[[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
//    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"Home" image:[UIImage imageNamed:@"tabbar_playground.png"] tag:1];
//    homeViewController.tabBarItem =item1;
//
//    
//    ActivityViewController *activityViewController=[[ActivityViewController alloc] initWithNibName:@"ActivityViewController" bundle:nil];
//    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"Activity" image:[UIImage imageNamed:@"tabbar_playground.png"] tag:2];
//    activityViewController.tabBarItem =item2;
//    
//    FavortiesViewController *favortiesViewController=[[FavortiesViewController alloc] initWithNibName:@"FavortiesViewController" bundle:nil];
//    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTitle:@"Favorites" image:[UIImage imageNamed:@"tabbar_playground.png"] tag:3];
//    favortiesViewController.tabBarItem =item3;
//    
//    SearchViewController *searchViewController=[[SearchViewController alloc] initWithNibName:@"SearchViewController" bundle:nil];
//    UITabBarItem *item4 = [[UITabBarItem alloc] initWithTitle:@"Search" image:[UIImage imageNamed:@"tabbar_playground.png"] tag:4];
//    searchViewController.tabBarItem =item4;
//    
//    CollaboratorsViewController *collaboratorsViewController=[[CollaboratorsViewController alloc] initWithNibName:@"CollaboratorsViewController" bundle:nil];
//    UITabBarItem *item5 = [[UITabBarItem alloc] initWithTitle:@"Collaborators" image:[UIImage imageNamed:@"tabbar_playground.png"] tag:5];
//    collaboratorsViewController.tabBarItem =item5;
//    
//    NSArray *array=[NSArray arrayWithObjects:homeViewController, activityViewController, favortiesViewController, searchViewController, collaboratorsViewController, nil];
//    rootTabBarController.viewControllers=array;
    
    UIStoryboard *rootStoryBoard=[UIStoryboard storyboardWithName:@"witmob" bundle:nil];
    [self.view.window setRootViewController:rootStoryBoard.instantiateInitialViewController];
    
}
@end
