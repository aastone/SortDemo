//
//  TestCell.m
//  SortDemo
//
//  Created by wangyipu on 14-3-6.
//  Copyright (c) 2014年 stone. All rights reserved.
//

#import "TestCell.h"
#import "ITTModel.h"

@implementation TestCell
{
    UILabel *lab1;
    UILabel *lab2;
    UILabel *lab3;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self _initViews];
    }
    return self;
}

- (void)_initViews
{
    lab1 = [[UILabel alloc] initWithFrame:CGRectZero];
    lab1.font = [UIFont systemFontOfSize:12];
    lab1.textAlignment = NSTextAlignmentCenter;
    [self addSubview:lab1];
    
    lab2 = [[UILabel alloc] initWithFrame:CGRectZero];
    lab2.font = [UIFont systemFontOfSize:12];
    lab2.textAlignment = NSTextAlignmentCenter;
    [self addSubview:lab2];
    
    lab3 = [[UILabel alloc] initWithFrame:CGRectZero];
    lab3.font = [UIFont systemFontOfSize:12];
    lab3.textAlignment = NSTextAlignmentCenter;
    [self addSubview:lab3];
}

- (void)setModel:(ITTModel *)model
{
    _model = model;
    [self setNeedsLayout];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    float width = self.bounds.size.width/3;
    
    lab1.frame = CGRectMake(10, 5, width-20, 30);
    lab1.text = [NSString stringWithFormat:@"%d", _model.number1];
    
    lab2.frame = CGRectMake(width+10, 5, width-20, 30);
    lab2.text = [NSString stringWithFormat:@"%d", _model.number2];
    
    lab3.frame = CGRectMake(2 * width+10, 5, width-20, 30);
    lab3.text = [NSString stringWithFormat:@"%d", _model.number3];
}


@end
