//
//  CellsViewController.m
//  Cells
//
//  Created by terzeron on 2014. 4. 30..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import "CellsViewController.h"
#import "CellsNameColorCell.h"

@interface CellsViewController ()

@end

@implementation CellsViewController

static NSString* CellTableIdentifier = @"CellTableIdentifier";

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.computers = @[
                       @{@"Name" : @"MacBook", @"Color": @"White"},
                       @{@"Name" : @"MacBook Pro", @"Color": @"Silver"},
                       @{@"Name" : @"iMac", @"Color": @"Silver"},
                       @{@"Name" : @"Mac Mini", @"Color": @"Silvr"},
                       @{@"Name" : @"Mac Pro", @"Color": @"Silver"},
                       ];
    UITableView* tableView = (id) [self.view viewWithTag: 1];
    tableView.rowHeight = 65;
    UINib *nib = [UINib nibWithNibName: @"CellsNameColorCell"
                                bundle: nil];
    [tableView registerNib: nib
    forCellReuseIdentifier: CellTableIdentifier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
     
#pragma mark -
#pragma mark Table Data Source Methods

- (NSInteger) tableView: (UITableView*) tableView numberOfRowsInSection: (NSInteger) section
{
    return [self.computers count];
}

- (UITableViewCell*) tableView: (UITableView*) tableView cellForRowAtIndexPath: (NSIndexPath*) indexPath
{
    CellsNameColorCell* cell = [tableView dequeueReusableCellWithIdentifier: CellTableIdentifier];
    NSDictionary* rowData = self.computers[indexPath.row];
    cell.name = rowData[@"Name"];
    cell.color = rowData[@"Color"];
    
    return cell;
}

@end
