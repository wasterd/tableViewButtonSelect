//
//  TableCell.h
//  tableViewButtonSelect
//
//  Created by mac on 16/4/21.
//  Copyright © 2016年 liuyl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableCell : UITableViewCell
@property(nonatomic, strong)UIButton *choose;
@property(nonatomic, assign)NSInteger Id;
@property(nonatomic, copy)void (^choosBlock)(NSInteger index);
@property(nonatomic, assign)BOOL didSetUpdateContants;
-(void)setChecked:(BOOL)checked;
@end
