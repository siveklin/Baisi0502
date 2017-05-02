//
//  UIImage+Image.m
//  Baisi0502
//
//  Created by Qlinchao on 17/5/2.
//  Copyright © 2017年 JAYA. All rights reserved.
//

#import "UIImage+Image.h"

@implementation UIImage (Image)


+ (UIImage *)noRenderWithImageName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
@end
