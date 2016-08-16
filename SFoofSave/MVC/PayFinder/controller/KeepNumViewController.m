//
//  KeepNumViewController.m
//  SFoofSave
//
//  Created by Lff on 16/8/16.
//  Copyright © 2016年 Lff. All rights reserved.
//

#import "KeepNumViewController.h"
#import "PackageCollectionCell.h"
#import "PackagesSureViewController.h"

@interface KeepNumViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation KeepNumViewController

- (void)viewDidLoad {
     [super viewDidLoad];
    [self changeLeftIetm];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"停机保号";
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    [_collectionView registerNib:[UINib nibWithNibName:@"PackageCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"PackageCollectionCell"];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 6;
}
-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"PackageCollectionCell";
    PackageCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    cell.titleNameLab.text = @"2个月";
    cell.describeTitleNameLab.text = @"售价30元";
    return cell;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return CGSizeMake(140, 71);
    
}
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(10, 15, 10, 15);
    
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    PackagesSureViewController *h = [[PackagesSureViewController
                                      alloc] initWithNibName:@"PackagesSureViewController" bundle:nil];
    h.navigationItem.title = @"保号支付";
    h.money = @"保号金额: ¥ 30";
    h.numBer = @"*****1874";
    h.describ = @"保号时长: 2个月";
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
