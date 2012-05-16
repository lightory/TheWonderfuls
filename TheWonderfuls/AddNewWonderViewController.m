//
//  AddNewWonderViewController.m
//  TheWonderfuls
//
//  Created by Fei Xie on 12-5-13.
//  Copyright (c) 2012年 xffighting.net. All rights reserved.
//

#import "AddNewWonderViewController.h"


@implementation AddNewWonderViewController
@synthesize wonderTF = _wonderTF;

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
    
    //Input new wonder
    _wonderTF = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 320, 320)];
    _wonderTF.borderStyle = UITextBorderStyleRoundedRect;
    _wonderTF.delegate = self;
    [self.view addSubview:_wonderTF];
    
    //Edit button
    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc]initWithTitle:@"Save" style:UIBarButtonItemStyleDone target:self action:@selector(save)];
    [self.navigationItem setRightBarButtonItem:saveButton];

    
     
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



- (void)save
{
    [_wonderTF resignFirstResponder];
    NSString *wonderText = _wonderTF.text;
    NSString *wonderDate = [NSDate date];
    
    NSDictionary *wonder = [[NSDictionary alloc] initWithObjectsAndKeys:wonderText,TEXT,wonderDate,DATE, nil];
    NSMutableArray *wonderList = [[[NSUserDefaults standardUserDefaults]objectForKey:WONDERLIST] mutableCopy];
    if (wonderList == nil) {
        wonderList = [[NSMutableArray alloc]initWithObjects:wonder, nil];
    }
    else
        [wonderList addObject:wonder];
    NSLog(@"Before set userdefaults: %@",[[NSUserDefaults standardUserDefaults]objectForKey:WONDERLIST]);
    [[NSUserDefaults standardUserDefaults]setObject:wonderList forKey:WONDERLIST];
    NSLog(@"After: %@",[[NSUserDefaults standardUserDefaults]objectForKey:WONDERLIST]);
}


























@end
