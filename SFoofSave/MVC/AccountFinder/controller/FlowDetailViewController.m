//
//  FlowDetailViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/19.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "FlowDetailViewController.h"

@interface FlowDetailViewController ()
@property (weak, nonatomic) IBOutlet UIView *infoBgVIew; //信息背景view


@end

@implementation FlowDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self changeLeftIetm];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.title = @"流量详情";
    
    
    [self createExcelVIew];
    
    
}
- (void)createExcelVIew{
    LFFExcelData *ds = [[LFFExcelData alloc] init];
    ds.titles = (NSMutableArray*)@[@"时长",@"使用流量",@"地点"];
    ds.data = [NSMutableArray arrayWithObjects:
               @[@"2016-06-17",@"308M",@"详情"],
               @[@"2016-06-17",@"308M",@"详情"],
               @[@"2016-06-17",@"308M",@"详情"],
               @[@"",@"",@""],@[@"",@"",@""],@[@"",@"",@""],@[@"",@"",@""],
               nil];
    
    //设置表格标题背景色
    ds.titleColor = customBlue;
    //设置表格单元格颜色
    ds.cellColor = customGray;
    //设置单元格网格线颜色
    ds.lineColor = customLineBlue;
    

    //设置表格的x
    ds.excelX = 10;
    //设置表格的y
    ds.excelY = _infoBgVIew.y+_infoBgVIew.height;
    //设置表格的宽度
    ds.excelWidth = boundsWidth-2*ds.excelX;
    //设置表格的单元格高度
    ds.cellHeight = 40;
    
    
    LFFExcelComponent *lffexcelComponent = [[LFFExcelComponent alloc] initWithdata:ds];
    [self.view addSubview:lffexcelComponent];
    
    
    
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
