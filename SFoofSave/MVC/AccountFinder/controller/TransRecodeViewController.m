//
//  TransRecodeViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/19.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "TransRecodeViewController.h"
#import "TransDetailViewController.h"
@interface TransRecodeViewController ()
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
    LFFExcelData *ds = [[LFFExcelData alloc] init];
    ds.titleColor = customBlue;
    ds.cellColor = customGray;
    ds.lineColor = customLineBlue;
    ds.titles = (NSMutableArray*)@[@"日期",@"类型",@"金额",@"操作"];
    ds.data = [NSMutableArray arrayWithObjects:
               @[@"2016-05-16",@"挂失",@"20.00元",@"详情"],
               @[@"2016-05-16",@"保号",@"20.00元",@"详情"],
               @[@"2016-05-16",@"续号",@"20.00元",@"详情"],
               @[@"",@"",@"",@""],@[@"",@"",@"",@""],@[@"",@"",@"",@""],@[@"",@"",@"",@""],
               nil];
    ds.excelX = 10;
    ds.excelY = 20;
    ds.cellHeight = 40;
    ds.anction = YES;
    
    LFFExcelComponent *excelComponent = [[ LFFExcelComponent alloc] initWithdata:ds block:^(NSInteger action) {
        NSLog(@"%ld",(long)action);
    }];
    [self.view addSubview:excelComponent];

    
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
