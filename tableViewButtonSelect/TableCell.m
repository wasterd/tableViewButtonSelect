

//
//  TableCell.m
//  tableViewButtonSelect
//
//  Created by mac on 16/4/21.
//  Copyright © 2016年 liuyl. All rights reserved.
//

#import "TableCell.h"
#import "Masonry.h"
@implementation TableCell


//-(UIButton *)choose{
//    
//    if (!_choose) {
//        _choose=[UIButton buttonWithType:UIButtonTypeCustom];
//        [_choose setImage:[UIImage imageNamed:@"shoppingnormal"] forState:UIControlStateNormal];
//        [_choose setImage:[UIImage imageNamed:@"shoppingSelected"] forState:UIControlStateSelected];
//        [_choose addTarget:self action:@selector(choosePressed:) forControlEvents:UIControlEventTouchUpInside];
//        self.Id=_choose.tag;
//        [self.contentView addSubview:_choose];
//    }
//    return _choose;
//}
//
//-(void)setChecked:(BOOL)checked{
//
//    if (checked) {
//        _choose.selected=YES;
//    }else{
//    
//        _choose.selected=NO;
//    }
//}
//-(void)choosePressed:(UIButton *)sender{
//    sender.selected=YES;
//    if (_choosBlock) {
//        _choosBlock(self.Id);
//    }
//}
//
//-(void)updateConstraints{
//    [super updateConstraints];
//    if (!_didSetUpdateContants) {
//        [self.choose mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.equalTo(self.contentView.mas_top).offset(5);
//            make.left.equalTo(self.contentView.mas_left).offset(15);
//            make.size.mas_equalTo(CGSizeMake(self.contentView.frame.size.width-20, 20));
//        }];
//    }
//    _didSetUpdateContants=YES;
//    
//}
//
//-(void)layoutSubviews{
//
//    [super layoutSubviews];
//    
//    _choose.frame=CGRectMake(12, 12, 20, 20);
//    [self.contentView layoutIfNeeded];
//    [self.contentView setNeedsLayout];
//}


@end
