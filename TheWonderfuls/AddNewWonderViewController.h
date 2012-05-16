//
//  AddNewWonderViewController.h
//  TheWonderfuls
//
//  Created by Fei Xie on 12-5-13.
//  Copyright (c) 2012年 xffighting.net. All rights reserved.
//

#import <UIKit/UIKit.h>
NSString static *WONDERLIST = @"WonderList";
NSString static *TEXT = @"text";
NSString static *DATE = @"date";
@interface AddNewWonderViewController : UIViewController<UITextFieldDelegate>
@property (nonatomic,retain) UITextField *wonderTF;
@end
