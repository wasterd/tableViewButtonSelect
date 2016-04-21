//
//  ViewController.m
//  tableViewButtonSelect
//
//  Created by mac on 16/4/21.
//  Copyright © 2016年 liuyl. All rights reserved.
//

#import "ViewController.h"
#import "TableCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    BOOL isSelectButton;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height-20) style:UITableViewStylePlain ];
    _tableView.delegate=self;
    _tableView.dataSource=self;
    [self.view addSubview:_tableView];
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellIde=@"cell";

    TableCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIde];
    
    if (cell == nil) {
        cell=[[TableCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIde ];
    }
    cell.textLabel.text=@"测试数据";
    cell.choose =[UIButton buttonWithType:UIButtonTypeCustom];
    cell.choose.frame=CGRectMake(self.view.frame.size.width-30, 20, 20, 20);
    [cell.choose setImage:[UIImage imageNamed:@"shoppingnormal"] forState:UIControlStateNormal];
    [cell.choose setImage:[UIImage imageNamed:@"shoppingSelected"] forState:UIControlStateSelected];
    [cell.choose addTarget:self action:@selector(choosePressed:) forControlEvents:UIControlEventTouchUpInside];
    isSelectButton=YES;
    
//    
//    if (self.indexRow == indexPath.row) {
//  
////        cell.choose setImage:<#(nullable UIImage *)#> forState:<#(UIControlState)#>
//        
//    }else{
//    
//        [cell.choose setImage:[UIImage imageNamed:@"shoppingnormal"] forState:UIControlStateNormal];
//
//
//    
//    }
    
    
    [cell.contentView addSubview:cell.choose];
    
    return cell;

}

-(void)choosePressed:(UIButton *)sender{
    if (isSelectButton) {
        sender.selected =!sender.selected;
    }else {
    
        NSLog(@"未选中");
    
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
   
    
//    if (self.indexRow == indexPath.row) {
//        return;
//    }
//    self.indexRow=indexPath.row;
//
//   
    if (indexPath.row==self.indexRow) {
        return;
    }
    
    NSIndexPath *oldIndexPath=[NSIndexPath indexPathForRow:self.indexRow inSection:0];

    TableCell *newCell=[self.tableView cellForRowAtIndexPath:oldIndexPath];
    if(isSelectButton){
        [newCell.choose setImage:[UIImage imageNamed:@"shoppingSelected"] forState:UIControlStateSelected];

    }else{
    [newCell.choose setImage:[UIImage imageNamed:@"shoppingnormal"] forState:UIControlStateSelected];
    
    }
    
  
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
