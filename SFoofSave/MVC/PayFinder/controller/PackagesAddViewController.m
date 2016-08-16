//
//  PackagesAddViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/16.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "PackagesAddViewController.h"
#import "PackageCollectionCell.h"
#import "PackagesSureViewController.h"

@interface PackagesAddViewController ()<UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionVIew;

@end

@implementation PackagesAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"套餐续费";
    _collectionVIew .delegate = self;
    _collectionVIew.dataSource = self;
    
    [_collectionVIew registerNib:[UINib nibWithNibName:@"PackageCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"PackageCollectionCell"];
    
    
    
    
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 11;
}
-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *strID = @"PackageCollectionCell";
    PackageCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:strID forIndexPath:indexPath];
    return cell;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(140, 71);
}
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(10, 15, 10, 15);
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    PackagesSureViewController *h =  [[PackagesSureViewController alloc] initWithNibName:@"PackagesSureViewController" bundle:nil];
    h.navigationItem.title = @"续费支付";
    h.money = @"续费金额: ¥ 50";
    h.numBer = @"卡号: *******1584";
    h.describ = @"续费月数:3个月";
    h.validDate = @"有效期:2017/06/15";
    [self.navigationController pushViewController:h animated:YES];
    
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
