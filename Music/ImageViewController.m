//
//  ImageViewController.m
//  Music
//
//  Created by Corepass on 16/5/19.
//  Copyright © 2016年 YANG. All rights reserved.
//

#import "ImageViewController.h"
#define PAG_COUNT 17

#define PAG_WEGTH self.scroView.frame.size
@interface ImageViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scroView;
//@property (weak, nonatomic) UIScrollView *scroView1;

@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property(nonatomic,strong)NSTimer *timer;

@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBarHidden = YES;
    self.imgView.image = self.imgAry[self.index];
}
-(void)viewWillDisappear:(BOOL)animated{
    self.navigationController.navigationBarHidden = NO;
}
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(BOOL)prefersStatusBarHidden{//取消水平滚动条
    
    return YES;
}

//设置计时器
-(void)setUpTimer{
    
    self.timer =[NSTimer scheduledTimerWithTimeInterval:2.0
                                                 target:self
                                               selector:@selector(pagControl) userInfo:nil repeats:YES];
}

/**
 先获取图片当前的scrollview的当前宽度+单个图片的宽度
 
 
 */
//
- (void)pagControl{
    
    CGFloat x =self.scroView.contentOffset.x +PAG_WEGTH.width;
    [self.scroView setContentOffset:CGPointMake(x, 0)
                           animated:YES];
    
}
//设置分页属性,设置pagcontrol与图片保持一致

//当滚动的时候就会调用这个方法

//-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
//    
//    int index =scrollView.contentOffset.x/PAG_WEGTH.width-1;
//    NSLog(@"%p",scrollView);
//    NSLog(@"%p",self.scroView);
//    
//    //    判断如果超过了PAG_COUNT数就要调到第一张
//    if (index==PAG_COUNT) {
//        index = 0;
//        
//    }else if (index==-1){
//        
//        
//        index = PAG_COUNT-1;
//    }
//    
//    self.pageControl.currentPage = index;
//    
//    NSLog(@"%d",index);
//    if (scrollView.contentOffset.x ==PAG_WEGTH.width*(PAG_COUNT+1)) {
//        
//        [scrollView setContentOffset:CGPointMake(PAG_WEGTH.width, 0)];
//    }else if(scrollView.contentOffset.x==0){
//        
//        [scrollView setContentOffset:CGPointMake(PAG_WEGTH.width*(PAG_COUNT+1), 0) ];
//        
//    }
//    
//}
-(void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView{
    
    int index =scrollView.contentOffset.x/PAG_WEGTH.width-1;
    
    
    //    判断如果超过了PAG_COUNT数就要调到第一张
    if (index==PAG_COUNT) {
        index = 0;
        
    }else if (index==-1){
        
        
        index = PAG_COUNT-1;
    }
    
    self.pageControl.currentPage = index;
    
    NSLog(@"%d",index);
    if (scrollView.contentOffset.x ==PAG_WEGTH.width*(PAG_COUNT+1)) {
        
        [scrollView setContentOffset:CGPointMake(PAG_WEGTH.width, 0)];
        
        //        [scrollView setContentOffset:CGPointMake(PAG_WEGTH.width, 0) animated:YES];
        
    }else if(scrollView.contentOffset.x==0){
        
        [scrollView setContentOffset:CGPointMake(PAG_WEGTH.width*PAG_COUNT, 0)];
    }
}
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    
    [self.timer invalidate];
}

-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    
//    [self setUpTimer];
    
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
