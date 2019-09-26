//
//  PresentViewController.m
//  present和push方法
//
//  Created by 王天亮 on 2019/9/26.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import "PresentViewController.h"
#import "CViewController.h"
#import "BCpassValue.h"
@interface PresentViewController ()

@end

@implementation PresentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.dismissBtn = [UIButton  buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:self.dismissBtn];
    self.dismissBtn.frame = CGRectMake(100, 400, 100, 50);
    [self.dismissBtn setTitle:@"dismiss" forState:UIControlStateNormal];
    [self.dismissBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.dismissBtn addTarget:self action:@selector(pressDismissBtn) forControlEvents:UIControlEventTouchUpInside];
    
    self.textButton = [UIButton  buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:self.textButton];
    self.textButton.frame = CGRectMake(200, 400, 100, 50);
    [self.textButton setTitle:@"textButton" forState:UIControlStateNormal];
    [self.textButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.textButton addTarget:self action:@selector(presstextButton) forControlEvents:UIControlEventTouchUpInside];
    
    
    }
- (void)pressDismissBtn {
    NSLog(@"1234");
    [self dismissViewControllerAnimated:NO completion:nil];
}
- (void)presstextButton {
    CViewController *vc = [[CViewController alloc] init];
    vc.delegate = self;
    [self presentViewController:vc animated:YES completion:nil];
    NSLog(@"%@  %@", self.presentingViewController, self.presentedViewController);
    //打印可以看到
//self.presentingViewController是UInavigationController，因为是UInavigationController 来present的它
//而self.presentedViewController是CViewcontroller,也就是当前页面present的下一个页面
}
- (void)calledDissmiss {
    NSLog(@"从c界面执行b见面的dismiss方法");
    [self dismissViewControllerAnimated:YES completion:nil];
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
