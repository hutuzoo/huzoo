//
//  XMGNavigationController.m
//  百思不得姐
//
//  Created by hutuzoo on 16/3/28.
//  Copyright © 2016年 sunmanfu. All rights reserved.
//

#import "XMGNavigationController.h"

@interface XMGNavigationController ()

@end

@implementation XMGNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count > 0) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"返回" forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        button.size = CGSizeMake(70, 30);
        button.contentEdgeInsets = UIEdgeInsetsMake(0, -8, 0, 0);
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
//这句super的push放在前面让viewControler可以覆盖上面设置的leftbarButtonItem
    [super pushViewController:viewController animated:animated];

}

- (void)back
{
    [self popToRootViewControllerAnimated:YES];
}


- (void)seting
{
    [self popToRootViewControllerAnimated:YES];
}
@end
