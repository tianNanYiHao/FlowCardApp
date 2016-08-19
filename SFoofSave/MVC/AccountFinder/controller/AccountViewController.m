//
//  AccountViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/9.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "AccountViewController.h"
#import "OpenSureViewController.h"
#import "MyCardViewController.h"
#import "TransRecodeViewController.h"
@interface AccountViewController ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView  *_tableView;
    NSMutableArray *_arrayTitle;
    
    
}
@property (weak, nonatomic) IBOutlet UIView *heagBGView;//headviewBG

@property (weak, nonatomic) IBOutlet UIView *headView;
@property (weak, nonatomic) IBOutlet UIImageView *headImage;//头像图片
@property (weak, nonatomic) IBOutlet UILabel *nameLab;//姓名lab
@property (weak, nonatomic) IBOutlet UIButton *coverBtn;
@property (weak, nonatomic) IBOutlet UIButton *openCard; //开卡
@property (weak, nonatomic) IBOutlet UIButton *myCard; // 我的卡
@property (weak, nonatomic) IBOutlet UIButton *transRecord; //交易记录




@end

@implementation AccountViewController

- (void)viewDidLoad {
     [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"账户";
    _headImage.layer.masksToBounds = YES;
    _headImage.layer.cornerRadius = 34;
    _heagBGView.frame = CGRectMake(0, 0, boundsWidth, 252);
    [self createTableView];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    //消除阴影
    self.navigationController.navigationBar.shadowImage = [UIImage new];
}
-(void)createTableView{
    _arrayTitle = [[NSMutableArray alloc] initWithCapacity:0];
    NSArray *titlSectionOne = @[@"推荐给朋友",@"常见问题",@"联系客服"];
    NSArray *titlSectionTwo = @[@"鼓励一下",@"服务协议",@"合作伙伴"];
    NSArray *titlSectionTre = @[@"关于我们",@"当前版本"];
    NSArray *titlSectionFor = @[@"退出登录"];
    [_arrayTitle addObject:titlSectionOne];
    [_arrayTitle addObject:titlSectionTwo];
    [_arrayTitle addObject:titlSectionTre];
    [_arrayTitle addObject:titlSectionFor];
    
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    _tableView  = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, boundsWidth, boundsHeight-64-44) style:UITableViewStyleGrouped];
    [self.view addSubview:_tableView];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [_tableView reloadData];
    _tableView.tableHeaderView = _heagBGView;
    
}

- (IBAction)singBtnClick:(id)sender {
    if ( [[Tool objectforkey:isSingIn] isEqualToString:SingNo]) {
        SingViewController *s = [[SingViewController alloc] initWithNibName:@"SingViewController" bundle:nil];
        [self presentViewController:s animated:YES completion:nil];
    }else{
        // do nothing
    }

}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [_tableView reloadData];
}
//开卡
- (IBAction)openCard:(id)sender {
    OpenSureViewController *op = [[OpenSureViewController alloc] initWithNibName:@"OpenSureViewController" bundle:nil];
    op.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:op animated:YES];
    
}
//我的卡
- (IBAction)myCard:(id)sender {
    MyCardViewController *my = [[MyCardViewController alloc] initWithNibName:@"MyCardViewController" bundle:nil];
    my.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:my animated:YES];
    
}
//交易记录
- (IBAction)transRecode:(id)sender {
    TransRecodeViewController *transR = [[TransRecodeViewController alloc] initWithNibName:@"TransRecodeViewController" bundle:nil];
    transR.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:transR animated:YES];

}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if ([[Tool objectforkey:isSingIn] isEqualToString:SingYes]) {
        _headImage.image = [UIImage imageNamed:@"ç"];
        _nameLab.text = @"猴子请来的逗逼";
    }
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _arrayTitle.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        return 3;
    }else if(section == 1){
        return 3;
    }else if(section == 2){
        return 2;
    }else if(section == 3){
        return 1;
    }else{
        return 0;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 49;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
     return 10;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"IDD1";
    UITableViewCell*cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    if (indexPath.section == 0) {
        NSArray *arr = _arrayTitle[0];
        cell.textLabel.text = arr[indexPath.row];
        return cell;
    }else
    if (indexPath.section == 1) {
        NSArray *arr = _arrayTitle[1];
        cell.textLabel.text = arr[indexPath.row];
        return cell;
    }else
    if (indexPath.section == 2) {
        NSArray *arr = _arrayTitle[2];
        cell.textLabel.text = arr[indexPath.row];
        return cell;
    }else
    if (indexPath.section == 3) {
        NSArray *arr = _arrayTitle[3];
        cell.textLabel.text = arr[indexPath.row];
        cell.textLabel.textAlignment = NSTextAlignmentCenter;
        cell.textLabel.textColor = [UIColor redColor];
        cell.textLabel.font = [UIFont systemFontOfSize:20];
        return cell;
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        
    }
    if (indexPath.section == 1) {
        
    }
    if (indexPath.section == 2) {
        
    }
    if (indexPath.section == 3) {
        if (indexPath.row == 0) {
            if ([[Tool objectforkey:isSingIn] isEqualToString:SingYes]) {
                [Tool setobject:SingNo forkey:isSingIn];
                SingViewController *s = [[SingViewController alloc] initWithNibName:@"SingViewController" bundle:nil];
                [self presentViewController:s animated:YES completion:nil];
                _nameLab.text = @"立即登录";
                _headImage.image = [UIImage imageNamed:@"头像"];
            }
        }else{
            // do nothing
        }
        
    }
    
    
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
