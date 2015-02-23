//
//  ViewSwitcherViewController.h
//  ViewSwitcher
//
//  Created by terzeron on 2014. 4. 16..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewSwitcherYellowViewController;
@class ViewSwitcherBlueViewController;

@interface ViewSwitcherViewController : UIViewController

@property (strong, nonatomic) ViewSwitcherYellowViewController *yellowViewController;
@property (strong, nonatomic) ViewSwitcherBlueViewController *blueViewController;
-(IBAction) switchViews:(id)sender;

@end
