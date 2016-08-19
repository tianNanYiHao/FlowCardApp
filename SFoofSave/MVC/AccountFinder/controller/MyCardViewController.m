//
//  MyCardViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/17.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "MyCardViewController.h"
#import "MyCardTableViewCell.h"
#import "MissCardViewController.h"
#import "AboutUSViewController.h"

@interface MyCardViewController ()<UITableViewDelegate,UITableViewDataSource,MyCardDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableivew;

@end

@implementation MyCardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self changeLeftIetm];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"我的卡";
    _tableivew.delegate = self;
    _tableivew.dataSource = self;
    _tableivew.separatorStyle = UITableViewCellAccessoryNone;
    
    [_tableivew registerNib:[UINib nibWithNibName:@"MyCardTableViewCell" bundle:nil] forCellReuseIdentifier:@"MyCardTableViewCell"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 180;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString*ID = @"MyCardTableViewCell";
    MyCardTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.delegate = self;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
}


#pragma mark - missBtn挂失按钮代理
- (void)missBtnClick{
    MissCardViewController *miss = [[MissCardViewController alloc] initWithNibName:@"MissCardViewController" bundle:nil];
    [self.navigationController pushViewController:miss animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
