//
//  PushViewController.m
//  present和push方法
//
//  Created by 王天亮 on 2019/9/26.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import "PushViewController.h"

@interface PushViewController ()

@end

@implementation PushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = YES;
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.popBtn = [UIButton  buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:self.popBtn];
    self.popBtn.frame = CGRectMake(100, 400, 50, 50);
    [self.popBtn setTitle:@"pop" forState:UIControlStateNormal];
    [self.popBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.popBtn addTarget:self action:@selector(pressPopBtn) forControlEvents:UIControlEventTouchUpInside];
}
- (void)pressPopBtn {
    NSLog(@"232141512");
    [self.navigationController popViewControllerAnimated:YES];
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
