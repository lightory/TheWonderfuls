//
//  TheWonderfulsFirstViewController.m
//  TheWonderfuls
//
//  Created by Fei Xie on 12-5-13.
//  Copyright (c) 2012年 xffighting.net. All rights reserved.
//

#import "TheWonderfulsFirstViewController.h"
#import "AddNewWonderViewController.h"

@implementation TheWonderfulsFirstViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
- (void)loadView {
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //Add new wonder button
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"+Add New Wonders+" forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 0, 320, 150);
    [button addTarget:self action:@selector(addNewWonder) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    //Tab bar item
    UITabBarItem *tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Wonderfuls" image:[UIImage imageNamed:@"first.png"] tag:0];
    self.tabBarItem = tabBarItem;
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)addNewWonder
{
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle: @"Wonders" style: UIBarButtonItemStyleBordered target: nil action: nil];
    [[self navigationItem] setBackBarButtonItem: backButton];
    [self.navigationController pushViewController:[[AddNewWonderViewController alloc]init] animated:YES];  
    [self.tabBarController.tabBar setHidden:YES];
    
}


@end
