//
//  ViewController.m
//  present和push方法
//
//  Created by 王天亮 on 2019/9/26.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import "ViewController.h"
#import "PresentViewController.h"
#import "PushViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.presentBtn = [UIButton  buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:self.presentBtn];
    self.presentBtn.frame = CGRectMake(100, 400, 90, 50);
    [self.presentBtn setTitle:@"present" forState:UIControlStateNormal];
    [self.presentBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.presentBtn addTarget:self action:@selector(pressPresent) forControlEvents:UIControlEventTouchUpInside];
    
    
    //self.view.backgroundColor = [UIColor whiteColor];
    self.pushBtn = [UIButton  buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:self.pushBtn];
    self.pushBtn.frame = CGRectMake(200, 400, 50, 50);
    [self.pushBtn setTitle:@"push" forState:UIControlStateNormal];
    [self.pushBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.pushBtn addTarget:self action:@selector(pressPush) forControlEvents:UIControlEventTouchUpInside];
}
- (void)pressPresent{
    PresentViewController *presentViewController = [[PresentViewController alloc] init];
    presentViewController.modalPresentationStyle = 0;
    
    [self presentViewController:presentViewController animated:YES completion:nil];
}
- (void)pressPush{
    PushViewController *pushViewController = [[PushViewController alloc] init];

    [self.navigationController pushViewController:pushViewController animated:YES];

    
}


@end
