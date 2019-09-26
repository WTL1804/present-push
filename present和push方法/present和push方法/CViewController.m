//
//  CViewController.m
//  present和push方法
//
//  Created by 王天亮 on 2019/9/26.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import "CViewController.h"
@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor  orangeColor];
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 500, 200, 40)];
    [btn setTitle:@"执行b的dismiss" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(pressBtn) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)pressBtn {
//    BCpassValue *bc = [[BCpassValue alloc] init];
    //执行b的dismiss方法
    [self.delegate calledDissmiss];
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
