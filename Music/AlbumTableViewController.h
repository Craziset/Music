//
//  AlbumTableViewController.h
//  Music
//
//  Created by Corepass on 16/5/20.
//  Copyright © 2016年 YANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlbumTableViewController : UITableViewController
@property(nonatomic,strong)NSArray *albumImgAry;
@property(nonatomic,strong)NSArray *albumNameAry;
@property(nonatomic,assign)NSInteger index;
@end
