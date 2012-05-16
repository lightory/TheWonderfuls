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
@synthesize wonderList = _wonderList;
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
    
    //Add wonder list
    _wonderList = [[UITableView alloc]initWithFrame:CGRectMake(0, 160, 320, 300) style:UITableViewStylePlain];
    [self.view addSubview:_wonderList];
    
    //Tab bar item
    UITabBarItem *tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Wonderfuls" image:[UIImage imageNamed:@"first.png"] tag:0];
    self.tabBarItem = tabBarItem;
    
    
}


- (void)addNewWonder
{
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle: @"Wonders" style: UIBarButtonItemStyleBordered target: nil action: nil];
    [[self navigationItem] setBackBarButtonItem: backButton];
    [self.navigationController pushViewController:[[AddNewWonderViewController alloc]init] animated:YES];  
    [self.tabBarController.tabBar setHidden:YES];
    
}

#pragma Table View Data Source Delegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *wonderID = @"wonder";
    UITableViewCell *cell  = [tableView dequeueReusableCellWithIdentifier:wonderID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:wonderID];
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
}

@end
