//
//  ViewController.m
//  BlurDemo
//
//  Created by Hiren J. Bhadreshwara on 15/09/14.
//  Copyright (c) 2014 TechnoPote. All rights reserved.
//

#import "ViewController.h"
#import "BlurViewCntrl.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(UIImage *) takeAScreenShot {
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]){ // checking for Retina display
        UIGraphicsBeginImageContextWithOptions(keyWindow.bounds.size, YES, [UIScreen mainScreen].scale);
    }
    else
    {  UIGraphicsBeginImageContext(keyWindow.bounds.size);
    }
    [keyWindow.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"push"]){
        UIImage *image = [[UIImage alloc] init];
        
        image = [self takeAScreenShot];
        
        BlurViewCntrl *blur = [segue destinationViewController];
        blur.backgroundImage = image;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
