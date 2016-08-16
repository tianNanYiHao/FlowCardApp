//
//  SearchViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/9.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "SearchViewController.h"
#import "PayTableViewCell.h"
#import "SearchChooseViewController.h"

@interface SearchViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation SearchViewController

- (void)viewDidLoad {
     [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.title = @"查询";
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerNib:[UINib nibWithNibName:@"PayTableViewCell" bundle:nil] forCellReuseIdentifier:@"PayTableViewCell"];
    _tableView.separatorStyle = UITableViewCellAccessoryNone;
    
    
    
    
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"PayTableViewCell";
    PayTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.stateLab.text = @"失败";
    cell.stateImg.image = [UIImage imageNamed:@"停机ICON"];
    cell.stateLab.textColor = [UIColor redColor];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    SearchChooseViewController *s = [[SearchChooseViewController alloc] initWithNibName:@"SearchChooseViewController" bundle:nil];
    
    s.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:s animated:YES];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
