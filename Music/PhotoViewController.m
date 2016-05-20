//
//  PhotoViewController.m
//  Music
//
//  Created by Corepass on 16/5/19.
//  Copyright © 2016年 YANG. All rights reserved.
//

#import "PhotoViewController.h"
#import "PhotoCollectionViewCell.h"
#import "ImageViewController.h"
#define PAG_COUNT 17
#define PAG_WEGTH self.view.frame.size

@interface PhotoViewController ()<UITraitEnvironment>
{
    NSArray *imgAry;
}
@property (weak, nonatomic) IBOutlet UICollectionView *collectionPhotoView;

@property(nonatomic,retain)NSArray *bigUrlStr;

@property(nonatomic,retain)NSMutableArray *bigViewArr;
@property(nonatomic,retain)NSArray *smallUrlStr;
@end

@implementation PhotoViewController
static NSString * const reuseIdentifier = @"CollectionItem";

- (void)viewDidLoad {
    [super viewDidLoad];
    _smallUrlStr = [[NSArray alloc]initWithObjects:@"", nil];
    _bigUrlStr = [[NSArray alloc]initWithObjects:@"", nil];
    _bigViewArr = [NSMutableArray array];
    
    for (int i=0; i<PAG_COUNT; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i+1]];
        
        //添加图片
        [self.bigViewArr addObject :image];
        
    }
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.bigViewArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.photoImg.image = self.bigViewArr[indexPath.row];
    
    return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(self.view.frame.size.width/3-10, self.view.frame.size.width/3);
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    ImageViewController *VC=[[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]instantiateViewControllerWithIdentifier:@"ImageViewController"];
//    PhotoCollectionViewCell *cell= (PhotoCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    VC.imgAry = self.bigViewArr;
    VC.index = indexPath.row;
    [self.navigationController pushViewController:VC animated:YES];
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
