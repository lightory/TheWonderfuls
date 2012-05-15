//
//  TheWonderfulsAppDelegate.m
//  TheWonderfuls
//
//  Created by Fei Xie on 12-5-13.
//  Copyright (c) 2012年 xffighting.net. All rights reserved.
//

#import "TheWonderfulsAppDelegate.h"
#import "TheWonderfulsFirstViewController.h"
#import "TheWonderfulsSecondViewController.h"

@implementation TheWonderfulsAppDelegate

@synthesize window = _window;
@synthesize tabBarController =_tabBarController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //Tab Bar Controller setup
    TheWonderfulsFirstViewController *firstVC = [[TheWonderfulsFirstViewController alloc] init];
    UINavigationController *navControler = [[UINavigationController alloc]initWithRootViewController:firstVC];
    TheWonderfulsSecondViewController *secondVC = [[TheWonderfulsSecondViewController alloc] init];
    
    NSArray *viewControllers = [NSArray arrayWithObjects:navControler,secondVC,nil];
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = viewControllers;
    
   
   
    [self.window addSubview:self.tabBarController.view];
    [self.window makeKeyAndVisible];
    
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
