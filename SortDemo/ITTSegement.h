//
//  ITTSegement.h
//  SortDemo
//
//  Created by wangyipu on 14-3-6.
//  Copyright (c) 2014年 stone. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ITTArrowView.h"
@interface ITTSegement : UIControl

@property(nonatomic, retain)NSArray *items;
@property(nonatomic, assign)int selectedIndex;
@property(nonatomic, assign)ArrowStates currentState;

-(id)initWithItems:(NSArray *)items;

@end
