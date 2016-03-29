//
//  XMGMeViewController.m
//  百思不得姐
//
//  Created by hutuzoo on 16/3/25.
//  Copyright © 2016年 sunmanfu. All rights reserved.
//

#import "XMGMeViewController.h"

@interface XMGMeViewController ()

@end

@implementation XMGMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我的";
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
    
    UIBarButtonItem *moonItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highImage:@"mine-moon-icon-click" target:self action:@selector(moonClick)];
    self.navigationItem.rightBarButtonItems = @[settingItem,moonItem];
    self.view.backgroundColor = XMGRGBColor(223, 223, 223);
}

- (void)settingClick
{
    XMGLogFun;
}

- (void)moonClick
{
    XMGLogFun;
}

@end
