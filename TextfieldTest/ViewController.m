//
//  ViewController.m
//  TextfieldTest
//
//  Created by l x on 16/8/12.
//  Copyright © 2016年 WL. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"


@interface ViewController ()<UITextFieldDelegate>

@property (strong, nonatomic) UITextField *textField;
@property (nonatomic, copy) NSString *string;

@end

@implementation ViewController

- (void )textsField {
    NSLog(@"2435678");
    NSLog(@"第二次改动");
    NSLog(@"第三次改动");
    NSLog(@"第四次改动");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.textField];
    
    self.navigationController.navigationBar.barTintColor = [UIColor cyanColor];
    
}
/**
 * textField的实现方法
 *
 * textFieldEditChanged:
 **/
- (void)textFieldEditChanged:(UITextField *)textField {
    
    self.string = textField.text;
    NSLog(@"text == %@", self.string);
}

- (void)uploadAciton:(UIButton *)button {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    NSDictionary *parameters = @{@"string":self.string, @"uesrName":@"m6.jpg"};
    
    [manager POST:@"" parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        UIImage *image = [UIImage imageNamed:@"m6.jpg"];
        NSData *data = UIImageJPEGRepresentation(image, 0.1);
        [formData appendPartWithFileData:data name:@"file" fileName:@"m6.jpg" mimeType:@"application/octet-stream"];
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"上传成功");
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"上传失败");
    }];
}

//收回键盘
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
