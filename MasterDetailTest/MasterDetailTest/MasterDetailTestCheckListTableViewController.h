//
//  MasterDetailTestCheckListTableViewController.h
//  MasterDetailTest
//
//  Created by terzeron on 2014. 5. 7..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterDetailTestCheckListTableViewController : UITableViewController

@property (copy, nonatomic) NSArray* snacks;
@property (assign, nonatomic) NSUInteger selectedSnack;

@end
