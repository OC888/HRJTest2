//
//  PullTestViewController.m
//  TextfieldTest
//
//  Created by aaa on 16/9/10.
//  Copyright © 2016年 WL. All rights reserved.
//

#import "PullTestViewController.h"

@interface PullTestViewController ()

@end

@implementation PullTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"第一次改动");
    self.view.backgroundColor = [UIColor grayColor];
//    pullTest2里加注释了么
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 50, 50, 50)];
    label.backgroundColor = [UIColor greenColor];
    label.text = @"github";
    [self.view addSubview:label];
    
    
    // Do any additional setup after loading the view.
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
