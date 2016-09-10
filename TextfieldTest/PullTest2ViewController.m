//
//  PullTest2ViewController.m
//  TextfieldTest
//
//  Created by l x on 16/9/10.
//  Copyright © 2016年 WL. All rights reserved.
//

#import "PullTest2ViewController.h"

@interface PullTest2ViewController ()

@end

@implementation PullTest2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"第一次改动");
//    加个注释
    self.view.backgroundColor = [UIColor greenColor];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 50, 50, 50)];
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
