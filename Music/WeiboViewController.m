//
//  WeiboViewController.m
//  Music
//
//  Created by Corepass on 16/5/20.
//  Copyright © 2016年 YANG. All rights reserved.
//

#import "WeiboViewController.h"

@interface WeiboViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *weiboView;

@end

@implementation WeiboViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL* url = [NSURL URLWithString:@"http://weibo.com/visudy?refer_flag=1001030101_&is_hot=1"];//创建URL
    NSURLRequest* request = [NSURLRequest requestWithURL:url];//创建NSURLRequest
    [self.weiboView loadRequest:request];//加载
}
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"333333");
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
