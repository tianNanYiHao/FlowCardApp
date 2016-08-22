//
//  FlowDateChooseViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/22.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "FlowDateChooseViewController.h"
#import "LFFPickerVIew.h"


@interface FlowDateChooseViewController ()
{
    UIDatePicker *dataPicker;
    LFFPickerVIew *pickerView;
    

}
@property (weak, nonatomic) IBOutlet UIButton *startTime; //开始时间
@property (weak, nonatomic) IBOutlet UIButton *overTime; //结束时间


@end

@implementation FlowDateChooseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self changeLeftIetm];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"自定义查询";
    
    NSArray *arr = [[NSBundle mainBundle] loadNibNamed:@"LFFPickerVIew" owner:nil options:nil];
    [self.view addSubview:arr[0]];

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//开始时间
- (IBAction)startTimeBtn:(id)sender {

    
}
//结束时间
- (IBAction)overTimeBtn:(id)sender {
    
    
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
