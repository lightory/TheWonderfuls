//
//  TheWonderfulsFirstViewController.h
//  TheWonderfuls
//
//  Created by Fei Xie on 12-5-13.
//  Copyright (c) 2012年 xffighting.net. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddNewWonderViewController.h"

@interface TheWonderfulsFirstViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView *wonderList;

@end
