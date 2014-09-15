//
//  BlurViewCntrl.h
//  BlurDemo
//
//  Created by Hiren J. Bhadreshwara on 15/09/14.
//  Copyright (c) 2014 TechnoPote. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlurViewCntrl : UIViewController


@property (strong, readwrite, nonatomic) UIColor *blurTintColor; // Used only when live blur is off
@property (assign, readwrite, nonatomic) CGFloat blurRadius; // Used only when live blur is off
@property (assign, readwrite, nonatomic) CGFloat blurSaturationDeltaFactor; // Used only when live blur is off

@property (weak, nonatomic) IBOutlet UIImageView *blurImage;

//The background image.
@property (nonatomic, retain) UIImage *backgroundImage;

@end
