//
//  ITTArrowView.m
//  SortDemo
//
//  Created by wangyipu on 14-3-6.
//  Copyright (c) 2014年 stone. All rights reserved.
//

#import "ITTArrowView.h"

@implementation ITTArrowView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.states = UPStates;
        self.image = [UIImage imageNamed:@"up_white@2x.png"];
    }
    return self;
}

- (void)setIsSelected:(BOOL)isSelected
{
    _isSelected = isSelected;
    if (isSelected) {
        ArrowStates states = _states ^ 1;
        self.states = states;
    } else {
        [self setStates:_states];
    }
}

- (void)setStates:(ArrowStates)states
{
    if (states != _states) {
        _states = states;
    }
    
    if (_isSelected) {
        if (_states == UPStates) {
            self.image = [UIImage imageNamed:@"up_red@2x.png"];
        } else if (_states == DOWNStates) {
            self.image = [UIImage imageNamed:@"down_red@2x.png"];
        }
        if (self.block != nil) {
            self.block(_states);
        }
    } else {
        if (_states == UPStates) {
            self.image = [UIImage imageNamed:@"up_white@2x.png"];
        } else if (_states == DOWNStates) {
            self.image = [UIImage imageNamed:@"down_white@2x.png"];
        }
    }
}

@end
