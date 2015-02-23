//
//  CellsNameColorCell.h
//  Cells
//
//  Created by terzeron on 2014. 4. 30..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellsNameColorCell : UITableViewCell

@property (copy, nonatomic) NSString* name;
@property (copy, nonatomic) NSString* color;

@property (strong, nonatomic) IBOutlet UILabel* nameValue;
@property (strong, nonatomic) IBOutlet UILabel* colorValue;

@end
