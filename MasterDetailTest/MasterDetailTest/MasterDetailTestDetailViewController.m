//
//  MasterDetailTestDetailViewController.m
//  MasterDetailTest
//
//  Created by terzeron on 2014. 5. 7..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import "MasterDetailTestDetailViewController.h"

@interface MasterDetailTestDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel* label;

@end

@implementation MasterDetailTestDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.label.text = [NSString stringWithFormat: @"This is the detail view for %@.", self.item];
    self.title = self.item;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
