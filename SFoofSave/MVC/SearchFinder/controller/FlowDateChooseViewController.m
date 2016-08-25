//
//  FlowDateChooseViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/22.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "FlowDateChooseViewController.h"

#import "LFFPickerVIew.h"

@interface FlowDateChooseViewController ()<LFFPickerViewDelegate>
{

    LFFPickerVIew *pickerView;
    

}
@property (weak, nonatomic) IBOutlet UILabel *startTImeL;
@property (weak, nonatomic) IBOutlet UIButton *startTime; //开始时间

@property (weak, nonatomic) IBOutlet UILabel *overTimeL;
@property (weak, nonatomic) IBOutlet UIButton *overTime; //结束时间


@end

@implementation FlowDateChooseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self changeLeftIetm];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"自定义查询";
    
   
    

    pickerView = [LFFPickerVIew awakeFromXib];
    pickerView.delegate = self;
    pickerView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    [self.view addSubview:pickerView];
    pickerView.alpha = 0;
    
    _startTImeL.text = [pickerView formatterDate:[NSDate date]];
    _overTimeL.text = [pickerView formatterDate:[NSDate date]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - lffpickerviewdelegate
-(void)changeAlphaHiden{
    
    
    [UIView animateWithDuration:0.2 animations:^{
        pickerView.alpha = 0;
    }];
}
-(void)changeAlphaHiden:(NSString *)dateStr{
    
    if (pickerView.Timetype ==1) {
        _startTImeL.text = dateStr;
    }
    if (pickerView.Timetype == 2) {
        _overTimeL.text = dateStr;
    }
    
    [UIView animateWithDuration:0.2 animations:^{
        pickerView.alpha = 0;
    }];
}





//开始时间
- (IBAction)startTimeBtn:(id)sender {
pickerView.Timetype = 1;
    [UIView animateWithDuration:0.2 animations:^{
        pickerView.alpha = 1;
    }];
    
    
}
//结束时间
- (IBAction)overTimeBtn:(id)sender {
    pickerView.Timetype = 2;
    [UIView animateWithDuration:0.2 animations:^{
        pickerView.alpha = 1;
    }];
    
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
