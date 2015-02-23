//
//  CellsNameColorCell.m
//  Cells
//
//  Created by terzeron on 2014. 4. 30..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import "CellsNameColorCell.h"

@implementation CellsNameColorCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) setName: (NSString*) n
{
    if (![n isEqualToString: _name]) {
        _name = [n copy];
        _nameValue.text = _name;
    }
}

- (void) setColor: (NSString*) c
{
    if (![c isEqualToString: _color]) {
        _color = [c copy];
        _colorValue.text = _color;
    }
}
@end
