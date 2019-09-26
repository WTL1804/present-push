//
//  PresentViewController.h
//  present和push方法
//
//  Created by 王天亮 on 2019/9/26.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BCpassValue.h"
NS_ASSUME_NONNULL_BEGIN

@interface PresentViewController : UIViewController <calledDismissDelegate>
@property (nonatomic, strong) UIButton *dismissBtn;
@property (nonatomic, strong) UIButton *textButton;

@end

NS_ASSUME_NONNULL_END
