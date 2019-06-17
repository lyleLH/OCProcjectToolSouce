//
//  UIColor+MTTCategory.m
//  Moodv2
//
//  Created by 刘浩 on 2017/8/2.
//  Copyright © 2017年 刘浩. All rights reserved.
//

#import "UIColor+MTTCategory.h"


@implementation UIColor (MTTCategory)

+ (NSArray * )randomPairColorForRead  {
    
//    NSArray * pairs= @[@[@"0xF1FAFA",@"0x000000"]
//                       ,@[@"0xE8FFE8",@"0x000000"]
//                       ,@[@"0x8080C0",@"0xFFFF04"]
//                       ,@[@"0xE8D098",@"0x0700FF"]
//                       ,@[@"0xEFEFDA",@"0xFF0201"]
//
//                       ,@[@"0xF2F1D7",@"0x000000"]
//                       ,@[@"0x336699",@"0xFFFFFF"]
//                       ,@[@"0x6699CC",@"0xFFFFFF"]
//                       ,@[@"0x66CCCC",@"0xFFFFFF"]
//
//                       ,@[@"0xB45B3E",@"0xFFFFFF"]
//                       ,@[@"0x479AC7",@"0xFFFFFF"]
//                       ,@[@"0x00B271",@"0xFFFFFF"]
//                       ,@[@"0xFBFBEA",@"0x000000"]
//
//                       ,@[@"0xD5F3F4",@"0x000000"]
//                       ,@[@"0xD7FFF0",@"0x000000"]
//                       ,@[@"0xF0DAD2",@"0x000000"]
//                       ,@[@"0xDDF3FF",@"0x000000"]
//
//
//                       ];
    NSArray * pairs= @[@[@"#F1FAFA",@"#000000"]
                       ,@[@"#E8FFE8",@"#000000"]
                       ,@[@"#8080C0",@"#FFFF04"]
                       ,@[@"#E8D098",@"#0700FF"]
                       ,@[@"#EFEFDA",@"#FF0201"]
                       
                       ,@[@"#F2F1D7",@"#000000"]
                       ,@[@"#336699",@"#FFFFFF"]
                       ,@[@"#6699CC",@"#FFFFFF"]
                       ,@[@"#66CCCC",@"#FFFFFF"]
                       
                       ,@[@"#B45B3E",@"#FFFFFF"]
                       ,@[@"#479AC7",@"#FFFFFF"]
                       ,@[@"#00B271",@"#FFFFFF"]
                       ,@[@"#FBFBEA",@"#000000"]
                       
                       ,@[@"#D5F3F4",@"#000000"]
                       ,@[@"#D7FFF0",@"#000000"]
                       ,@[@"#F0DAD2",@"#000000"]
                       ,@[@"#DDF3FF",@"#000000"]
                       
                       
                       ];
    
    
    NSInteger l = pairs.count;
    NSInteger index  = ( arc4random() % l);
    return pairs[index];
}
    
    
+ (UIColor *)mtt_normalTextColor {
    return [UIColor mtt_colorWithHex:0x333333 alpha:1.0];
    
}

+ (UIColor *)mtt_normalTextRedColor {
    return [UIColor mtt_colorWithHex:0xB23333 alpha:1.0];
    
}


+ (UIColor *)mtt_colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}


+ (UIColor *) mtt_randomColor

{
    
    CGFloat hue = ( arc4random() % 256 / 256.0 ); //0.0 to 1.0
    
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.2; // 0.5 to 1.0,away from white
    
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.4; //0.5 to 1.0,away from black
    
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    
}


#pragma mark - Hex

+ (UIColor *)mtt_colorWithHex:(int)hexValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
                           green:((float)((hexValue & 0xFF00) >> 8))/255.0
                            blue:((float)(hexValue & 0xFF))/255.0
                           alpha:alpha];
}

+ (UIColor *)mtt_colorWithHex:(int)hexValue {
    return [UIColor mtt_colorWithHex:hexValue alpha:1.0];
}


#pragma mark - RGBA
+(UIColor *) mtt_colorRGB:(CGFloat)R g:(CGFloat)G b:(CGFloat)B {
    
    return [self mtt_colorRGBA:R g:G b:B A:1.0];
}

+(UIColor *) mtt_colorRGBA:(CGFloat)R g:(CGFloat)G b:(CGFloat)B A:(CGFloat)alpha {
    return [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:alpha];
    
}



+ (UIColor*)mtt_colorFromImage:(UIImage *)imageIn fillInView:(UIView *)view {
    
    UIGraphicsBeginImageContext(view.frame.size);
    [imageIn drawInRect:view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return  [UIColor colorWithPatternImage:image];
    
}
@end
