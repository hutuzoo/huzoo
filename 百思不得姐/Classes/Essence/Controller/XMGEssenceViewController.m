//
//  XMGEssenceViewController.m
//  百思不得姐
//
//  Created by hutuzoo on 16/3/25.
//  Copyright © 2016年 sunmanfu. All rights reserved.
//

#import "XMGEssenceViewController.h"

@interface XMGEssenceViewController ()

@end

@implementation XMGEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航栏内容
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //设置导航栏左边的按钮

    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];
    self.view.backgroundColor = XMGRGBColor(223, 223, 223);

}

- (void)tagClick
{
    XMGLogFun;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = XMGRGBColor(200, 100, 50);
    [self.navigationController pushViewController:vc animated:YES];
}

@end
