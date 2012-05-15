//
//  AddNewWonderViewController.m
//  TheWonderfuls
//
//  Created by Fei Xie on 12-5-13.
//  Copyright (c) 2012年 xffighting.net. All rights reserved.
//

#import "AddNewWonderViewController.h"

@implementation AddNewWonderViewController
@synthesize inputWonder = _inputWonder;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


- (void)loadView
{
    self.view = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //Edit button
    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc]initWithTitle:@"Save" style:UIBarButtonItemStylePlain target:self action:@selector(saveAction)];
    [self.navigationItem setRightBarButtonItem:saveButton];
    
    //Input new wonder
    UITextField *inputWonderTF = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 320, 320)];
    inputWonderTF.borderStyle = UITextBorderStyleRoundedRect;
    self.inputWonder = inputWonderTF;
    [self.view addSubview:inputWonderTF];
    
    
     
}


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

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

- (void)saveAction
{
    NSString *wonderText = self.inputWonder.text;
    
}

@end
