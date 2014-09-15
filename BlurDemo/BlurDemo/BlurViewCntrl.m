//
//  BlurViewCntrl.m
//  BlurDemo
//
//  Created by Hiren J. Bhadreshwara on 15/09/14.
//  Copyright (c) 2014 TechnoPote. All rights reserved.
//

#import "BlurViewCntrl.h"
#import "UIImage+TPBlurImage.h"

@interface BlurViewCntrl ()

@end

@implementation BlurViewCntrl

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _blurTintColor = [UIColor colorWithWhite:1 alpha:0.75f];
    _blurSaturationDeltaFactor = 1.8f;
    _blurRadius = 10.0f;

    UIImage *image;
    image = [self.backgroundImage blurredImageWithRadius:_blurRadius iterations:_blurSaturationDeltaFactor tintColor:_blurTintColor];
    _blurImage.image = image;
    _blurImage.clipsToBounds = YES;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
