//
//  ViewController.m
//  ADProgressHUD
//
//  Created by goodswifter on 04/07/2020.
//  Copyright (c) 2020 goodswifter. All rights reserved.
//

#import "ViewController.h"
#import <ADProgressHUD/ADProgressHUD.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *greenView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [ADProgressHUD showActivityMessage:@"正在加载中..." view:self.greenView];
//    [ADProgressHUD showActivityMessage:@""];
//    [ADProgressHUD showActivityMessage:@"正在加载中..."];
//    [ADProgressHUD showMessage:@"哈哈"];
    [ADProgressHUD showHUD];
//    [ADProgressHUD showActivityMessage:@"哈哈" toView:nil];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            [ADProgressHUD hideHUD];
//            [ADProgressHUD showSuccess:@"请求成功了"];
//            [ADProgressHUD showMessage:@"请求成功" toView:self.greenView];
//            [ADProgressHUD showSuccess:@"请求成功" toView:self.view];
        });
    });
}

- (IBAction)test:(id)sender {
    [ADProgressHUD showSuccess:@"哈哈"];
    NSLog(@"%s", __func__);
}

- (void)dealloc {
    NSLog(@"%@", self.greenView);
}

@end
