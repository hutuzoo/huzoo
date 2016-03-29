//
//  UIBarButtonItem+XMGExtensoin.m
//  百思不得姐
//
//  Created by hutuzoo on 16/3/28.
//  Copyright © 2016年 sunmanfu. All rights reserved.
//

#import "UIBarButtonItem+XMGExtensoin.h"

@implementation UIBarButtonItem (XMGExtensoin)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *Button = [UIButton buttonWithType:UIButtonTypeCustom];
    [Button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [Button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    Button.size = Button.currentBackgroundImage.size;
    [Button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc] initWithCustomView:Button];
  
}

@end
