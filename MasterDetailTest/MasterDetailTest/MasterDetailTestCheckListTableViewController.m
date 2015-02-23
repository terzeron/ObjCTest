//
//  MasterDetailTestCheckListTableViewController.m
//  MasterDetailTest
//
//  Created by terzeron on 2014. 5. 7..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import "MasterDetailTestCheckListTableViewController.h"

@interface MasterDetailTestCheckListTableViewController ()

@end

static NSString* snackCellIdentifier = @"SnackNameCell";

@implementation MasterDetailTestCheckListTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Check one";
    self.snacks = @[@"Who Hash", @"Bubba Gump Shrimp Etouffee",
                    @"Who Pudding", @"Scooby Snacks",
                    @"Everlasting Gobstopper",
                    @"Green Eggs and Ham", @"Soylent Green",
                    @"Hard Tack", @"Lembas Bread"];
    self.selectedSnack = NSNotFound;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.snacks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: snackCellIdentifier];
    
    cell.textLabel.text = self.snacks[indexPath.row];
    if (self.selectedSnack == indexPath.row) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    return cell;
}

- (void) tableView: (UITableView*) tableView didSelectRowAtIndexPath: (NSIndexPath*) indexPath
{
    if (indexPath.row != self.selectedSnack) {
        if (self.selectedSnack != NSNotFound) {
            NSIndexPath* oldIndexPath = [NSIndexPath indexPathForRow: self.selectedSnack
                                                           inSection: 0];
            UITableViewCell* oldCell = [tableView cellForRowAtIndexPath: oldIndexPath];
            oldCell.accessoryType = UITableViewCellAccessoryNone;
        }
        UITableViewCell* cell = [tableView cellForRowAtIndexPath: indexPath];
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        self.selectedSnack = indexPath.row;
    }
    [tableView deselectRowAtIndexPath: indexPath animated: YES];
    
}


/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
