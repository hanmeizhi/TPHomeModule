//
//  Corner.m
//  Pods-TPHomeModule_Example
//
//  Created by smile on 2018/11/15.
//

#import "Corner.h"

@implementation Corner

- (void)setImage:(UIImage *)image withCorner:(CGFloat)radius
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, [UIScreen mainScreen].scale);
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:radius];
    [bezierPath addClip];
    CGRect rect = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
    [image drawInRect:rect];
    self.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}

@end
