//
//  PackagesSureViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/16.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "PackagesSureViewController.h"

@interface PackagesSureViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnWeChat;
@property (weak, nonatomic) IBOutlet UIButton *btnZFB;
@property (weak, nonatomic) IBOutlet UILabel *moneyLab;
@property (weak, nonatomic) IBOutlet UILabel *numBerLab;
@property (weak, nonatomic) IBOutlet UILabel *describLab;
@property (weak, nonatomic) IBOutlet UILabel *validDateLab;
@end

@implementation PackagesSureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _moneyLab.text = _money;
    _numBerLab.text = _numBer;
    _describLab.text = _describ;
    _validDateLab.text = _validDate;
    
    
    _btnWeChat.selected = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//微信支付
- (IBAction)btnWeChatClick:(id)sender {
    if (_btnZFB.selected == YES) {
        _btnZFB.selected = NO;
        _btnWeChat.selected = YES;
    }else{
        _btnWeChat.selected = !_btnWeChat.selected;
    }
    
    
}
//支付宝支付
- (IBAction)btnZFBClick:(id)sender {
    
    if (_btnWeChat.selected == YES) {
        _btnWeChat.selected = NO;
        _btnZFB.selected = YES;
    }else{
         _btnZFB.selected = !_btnZFB.selected;
    }
   
}

//确认支付
- (IBAction)paySure:(id)sender {
    
    
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
