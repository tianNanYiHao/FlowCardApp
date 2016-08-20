//
//  TransRecodeViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/19.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "TransRecodeViewController.h"
#import "TransDetailViewController.h"
@interface TransRecodeViewController ()<LFFExcelDelegate>
{
    TransDetailViewController *trans;
    NSInteger index;
    
    
    
}
@end

@implementation TransRecodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self changeLeftIetm];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"交易记录";
    
    
    [self  createExcelView];
    
}
- (void)createExcelView{
    //初始化
    LFFExcelData *ds = [[LFFExcelData alloc] init];
    //设置标题颜色
    ds.titleColor = customBlue;
    //设置单元格颜色
    ds.cellColor = customGray;
    //设置单元格线颜色
    ds.lineColor = customLineBlue;
    //设置标题数据
    ds.titles = (NSMutableArray*)@[@"日期",@"类型",@"金额",@"操作"];
    //设置excel数据
    ds.data = [NSMutableArray arrayWithObjects:
               @[@"2016-05-16",@"挂失",@"20.00元",@"详情"],
               @[@"2016-05-16",@"保号",@"20.00元",@"详情"],
               @[@"2016-05-16",@"续号",@"20.00元",@"详情"],
               @[@"",@"",@"",@""],@[@"",@"",@"",@""],@[@"",@"",@"",@""],@[@"",@"",@"",@""],
               nil];
    //设置初始X
    ds.excelX = 10;
    //设置初始Y
    ds.excelY = 20;
    //设置单元格高
    ds.cellHeight = 40;
    //设置是否有按钮动作
    ds.anction = YES;
    //创建Excel
    LFFExcelComponent *excelComponent = [[ LFFExcelComponent alloc] initWithdata:ds];
    excelComponent.delegate = self;
    [self.view addSubview:excelComponent];

    
}

#pragma mark LFFExcelDelegate
-(void)btnAction:(NSInteger)index{
    TransDetailViewController *tr = [[TransDetailViewController alloc] initWithNibName:@"TransDetailViewController" bundle:nil];
    [self.navigationController pushViewController:tr animated:YES];
    
    
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
