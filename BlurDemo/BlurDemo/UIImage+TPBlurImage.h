//
//  UIImage+TPBlurImage.h
//  BlurDemo
//
//  Created by Hiren J. Bhadreshwara on 15/09/14.
//  Copyright (c) 2014 TechnoPote. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Accelerate/Accelerate.h>
#import <QuartzCore/QuartzCore.h>


@interface UIImage (TPBlurImage)

- (UIImage *)blurredImageWithRadius:(CGFloat)blurRadius iterations:(NSUInteger)iterations tintColor:(UIColor *)tintColor;
@end
