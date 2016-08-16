//
//  FlowBagAddViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/16.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "FlowBagAddViewController.h"
#import "PackageCollectionCell.h"
#import "PackagesSureViewController.h"


@interface FlowBagAddViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation FlowBagAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"流量包选择";
    
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    [_collectionView registerNib:[UINib nibWithNibName:@"PackageCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"PackageCollectionCell"];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 11;
}
-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"PackageCollectionCell";
    
    PackageCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    cell.titleNameLab.text = @"100M";
    cell.describeTitleNameLab.text = @"售价50元";
    
    
    return cell;
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(140, 71);
}
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(10, 15, 10, 15);
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    PackagesSureViewController *h = [[PackagesSureViewController alloc] initWithNibName:@"PackagesSureViewController" bundle:nil];
    h.navigationItem.title = @"流量支付";
    h.money = @"流量金额: ¥ 50";
    h.numBer = @"*****1874";
    h.describ = @"流量额度: 300M";
    h.validDate = @"有效期:2018/06/14";
    [self.navigationController pushViewController:h animated:YES];
    
    
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
