//
//  ImageViewController.h
//  Music
//
//  Created by Corepass on 16/5/19.
//  Copyright © 2016年 YANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property(strong,nonatomic)NSArray *imgAry;
@property(assign,nonatomic)NSInteger index;
@end
