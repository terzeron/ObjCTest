//
//  SimpleTableViewController.m
//  SimpleTable
//
//  Created by terzeron on 2014. 4. 30..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import "SimpleTableViewController.h"

@interface SimpleTableViewController ()

@end

@implementation SimpleTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // 테이블에 넣을 데이터 준비
    self.dwarves = @[@"Sleepy", @"Sneezy", @"Bashful", @"Happy", @"Sleepy", @"Sneezy", @"Bashful", @"Happy", @"Sleepy", @"Sneezy", @"Bashful", @"Happy", @"Sleepy", @"Sneezy", @"Bashful", @"Happy", @"Sleepy", @"Sneezy", @"Bashful", @"Happy", @"Sleepy", @"Sneezy", @"Bashful", @"Happy"];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 전체 데이터의 갯수 반환하는 함수
- (NSInteger) tableView: (UITableView*) tableView numberOfRowsInSection: (NSInteger) section
{
    return [self.dwarves count];
}

// 각 행에 그려줄 데이터를 반환하는 함수
- (UITableViewCell*) tableView: (UITableView*) tableView cellForRowAtIndexPath: (NSIndexPath *) indexPath
{
    static NSString* SimpleTableIdentifier = @"SimpleTableIdentifier";
    // 한번 만들었던 데이터를 재사용할 수 있도록 dequeue에 넣어둠
    // 재사용하려면 ID를 부여해야 함
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier: SimpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleSubtitle
                                      reuseIdentifier: SimpleTableIdentifier];
    }
    
    UIImage* image = [UIImage imageNamed:@"star.png"];
    cell.imageView.image = image;
    
    UIImage* imageHighlight = [UIImage imageNamed:@"star2.png"];
    cell.imageView.highlightedImage = imageHighlight;
    
    
    cell.textLabel.text = self.dwarves[indexPath.row];
    //cell.textLabel.font = [UIFont boldSystemFontOfSize: 50];
    if (indexPath.row < 7) {
        cell.detailTextLabel.text = @"Mr. Disney";
    } else {
        cell.detailTextLabel.text = @"Mr. Tolkien";
    }
    return cell;
}

#pragma mark -
#pragma mark Table Delegate Methods

- (NSInteger) tableView: (UITableView *) tableView indentationLevelForRowAtIndexPath: (NSIndexPath*) indexPath
{
    return indexPath.row;
}

- (NSIndexPath*) tableView: (UITableView*) tableView willSelectRowAtIndexPAth: (NSIndexPath*) indexPath
{
    if (indexPath.row == 0) {
        return nil;
    } else {
        return indexPath;
    }
}

- (void) tableView: (UITableView*) tableView didSelectRowAtIndexPath: (NSIndexPath*) indexPath
{
    NSString* rowValue = self.dwarves[indexPath.row];
    NSString* message = [[NSString alloc] initWithFormat: @"You selected %@", rowValue];
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle: @"Row Selected"
                                                    message: message
                                                   delegate: nil
                                          cancelButtonTitle: @"Yes I Did"
                                          otherButtonTitles: nil];
    [alert show];
    [tableView deselectRowAtIndexPath: indexPath animated: YES];
}

@end
