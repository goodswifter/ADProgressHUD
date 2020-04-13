//
//  ViewController.m
//  ADProgressHUD
//
//  Created by goodswifter on 04/07/2020.
//  Copyright (c) 2020 goodswifter. All rights reserved.
//

#import "ViewController.h"
#import <ADProgressHUD.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *greenView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [MBProgressHUD showActivityMessage:@"正在加载中..." view:self.greenView];
    [ADProgressHUD showActivityMessage:@"正在加载中..."];
//    [ADProgressHUD showMessage:@"哈哈"];
//    [MBProgressHUD showMessage:@"哈哈撒旦法是的发生的发生的发说说阿什顿发 阿什顿发阿诗丹顿发哈哈撒旦法是的发生的发生的发说说阿什顿发 阿什顿发阿诗丹顿发哈哈撒旦法是的发生的发生的发说说阿什顿发 阿什顿发阿诗丹顿发"];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            [ADProgressHUD hideHUD];
//            [MBProgressHUD hideHUDForView:self.greenView];
            [ADProgressHUD showSuccess:@"请求成功"];
        });
    });
}

@end
