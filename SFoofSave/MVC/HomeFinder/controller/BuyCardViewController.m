//
//  BuyCardViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/15.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "BuyCardViewController.h"
#import "BuyCardTableViewCell.h"
@interface BuyCardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableVIew;

@end

@implementation BuyCardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"购卡";
    
    _tableVIew.delegate = self;
    _tableVIew.dataSource = self;
    [_tableVIew registerNib:[UINib nibWithNibName:@"BuyCardTableViewCell" bundle:nil] forCellReuseIdentifier:@"BuyCardTableViewCell"];
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"BuyCardTableViewCell";
    BuyCardTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    return cell;
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
