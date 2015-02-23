//
//  MasterDetailTestMasterViewController.m
//  MasterDetailTest
//
//  Created by terzeron on 2014. 5. 7..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import "MasterDetailTestMasterViewController.h"

#import "MasterDetailTestDetailViewController.h"

@interface MasterDetailTestMasterViewController ()
@end


static NSString* CellIdentifier = @"Cell";

@implementation MasterDetailTestMasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Movies";
    self.movies = @[@"Toy Story", @"A Bug's Life", @"Toy Story 2", @"Monsters, Inc.", @"Finding Nemo", @"The Incredibles",
                    @"Cars", @"Ratatouille", @"WALL-E", @"Up", @"Toy Story 3", @"Cars 2", @"Brave"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.movies count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSDate *object = self.movies[indexPath.row];
    cell.textLabel.text = [object description];
    return cell;
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    MasterDetailTestDetailViewController* detail = segue.destinationViewController;
    NSInteger selectedRow = [self.tableView indexPathForSelectedRow].row;
    detail.item = self.movies[selectedRow];
}

@end
