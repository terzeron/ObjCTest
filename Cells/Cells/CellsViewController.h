//
//  CellsViewController.h
//  Cells
//
//  Created by terzeron on 2014. 4. 30..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (copy, nonatomic) NSArray* computers;

@end
