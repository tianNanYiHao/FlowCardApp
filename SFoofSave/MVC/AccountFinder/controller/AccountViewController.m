//
//  AccountViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/9.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "AccountViewController.h"

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
    _tableView  = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, boundsWidth, boundsHeight-64) style:UITableViewStyleGrouped];
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
    return 44;
    
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
        
    }
    if (indexPath.section == 1) {
        NSArray *arr = _arrayTitle[1];
        cell.textLabel.text = arr[indexPath.row];
        
    }
    if (indexPath.section == 2) {
        NSArray *arr = _arrayTitle[2];
        cell.textLabel.text = arr[indexPath.row];
        
    }
    if (indexPath.section == 3) {
        NSArray *arr = _arrayTitle[3];
        cell.textLabel.text = arr[indexPath.row];
        
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
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
