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
    
    NSIndexPath * indexPath = [NSIndexPath indexPathForRow:self.indexRow inSection:0];
    
    [self tableView:self.tableView didSelectRowAtIndexPath:indexPath];
    
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
    [cell.choose addTarget:self action:@selector(choosePressed:) forControlEvents:UIControlEventTouchUpInside];
    cell.choose.tag=indexPath.row;
    if (self.indexRow == indexPath.row) {
        [cell.choose setImage:[UIImage imageNamed:@"shoppingSelected"] forState:UIControlStateNormal];
    }else{
        [cell.choose setImage:[UIImage imageNamed:@"shoppingnormal"] forState:UIControlStateNormal];
    }
    [cell.contentView addSubview:cell.choose];
    
    return cell;

}

-(void)choosePressed:(UIButton *)sender{
 
    self.indexRow=sender.tag;
    [self.tableView reloadData];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    self.indexRow = indexPath.row;
    [self.tableView reloadData];
    
  
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
