//
//  AlbumTableViewController.m
//  Music
//
//  Created by Corepass on 16/5/20.
//  Copyright © 2016年 YANG. All rights reserved.
//

#import "AlbumTableViewController.h"

@interface AlbumTableViewController ()
{
    NSArray *albumAry;
}
@property (weak, nonatomic) IBOutlet UIImageView *AlbumImg;
@property (weak, nonatomic) IBOutlet UILabel *AlbumNameLab;
@property (weak, nonatomic) IBOutlet UILabel *AlbumLanguageLab;
@property (weak, nonatomic) IBOutlet UILabel *AlbumTimeLab;
@property (weak, nonatomic) IBOutlet UILabel *AlbumKindLab;
@property (weak, nonatomic) IBOutlet UILabel *AlbumStyleLab;

@end

@implementation AlbumTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *ary1 = @[@"国语",@"2015年11月11日",@"未来车库舞曲 Future Garage, 另类节奏布鲁斯 Alternative R&B"];
    NSArray *ary2 = @[@"国语",@"2016年01月20日",@" 鼓打贝斯 Drum & Bass, 回响贝斯 Dubstep, 未来车库舞曲 Future Garage"];

    NSArray *ary3 = @[@"其他",@"2015年02月06日",@"未来车库舞曲 Future Garage"];

    NSArray *ary4 = @[@"其他",@"2015年06月24日",@"陷阱舞曲 Trap"];
    NSArray *ary5 = @[@"英语",@"2014年05月20日",@"电音流行 Electropop"];
    NSArray *ary6 = @[@"英语",@"2015年05月26日",@"弛放 Chillout, 未来车库舞曲 Future Garage"];
    NSArray *ary7 = @[@"国语",@"2015年11月17日",@"弛放 Chillout, 未来车库舞曲 Future Garage"];

    albumAry = [[NSArray alloc]initWithObjects:ary1,ary2,ary3,ary4,ary5,ary6,ary7, nil];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}
-(void)viewWillAppear:(BOOL)animated{
    self.AlbumImg.image = [UIImage imageNamed:self.albumImgAry[self.index]];
    self.AlbumNameLab.text = self.albumNameAry[self.index];
    
    NSArray *ary = albumAry[self.index];
    
    self.AlbumLanguageLab.text = ary[0];
    self.AlbumTimeLab.text = ary[1];
    self.AlbumStyleLab.text = ary[2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
