//
//  XMGNewViewController.m
//  百思不得姐
//
//  Created by hutuzoo on 16/3/25.
//  Copyright © 2016年 sunmanfu. All rights reserved.
//

#import "XMGNewViewController.h"

@interface XMGNewViewController ()

@end

@implementation XMGNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //设置导航栏左边的按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];
    self.view.backgroundColor = XMGRGBColor(223, 223, 223);
}

- (void)tagClick
{
    XMGLog(@"%s", __FUNCTION__);
}
@end
