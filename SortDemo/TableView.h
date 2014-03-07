//
//  TableView.h
//  SortDemo
//
//  Created by wangyipu on 14-3-6.
//  Copyright (c) 2014年 stone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableView : UITableView<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, retain) NSArray *data;

@end
