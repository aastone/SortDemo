//
//  ITTArrowView.h
//  SortDemo
//
//  Created by wangyipu on 14-3-6.
//  Copyright (c) 2014年 stone. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum arrowStates {
    UPStates = 0,
    DOWNStates = 1
}ArrowStates;

typedef void(^StateHadChangedBlock) (ArrowStates state);

@interface ITTArrowView : UIImageView

@property (nonatomic, assign) ArrowStates states;
@property (nonatomic, assign) BOOL isSelected;
@property (nonatomic, copy) StateHadChangedBlock block;

@end
