//
//  UIBarButtonItem+XMGExtensoin.h
//  百思不得姐
//
//  Created by hutuzoo on 16/3/28.
//  Copyright © 2016年 sunmanfu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (XMGExtensoin)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;

@end
