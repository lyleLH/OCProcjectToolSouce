//
//  MTTComonDefine.h
//  N2R
//
//  Created by 六号 on 2019/4/9.
//  Copyright © 2019 lyle. All rights reserved.
//

#ifndef MTTComonDefine_h
#define MTTComonDefine_h


// -------------------------- Device Info -------------------------- //

#define kDeviceModel                        @"deviceModel"
#define kDeviceModelPad                     @"iPad"
#define kDeviceModelPhone                   @"iPhone"
#define kDeviceModelPod                     @"iPod touch"

//判断目前机型的宏定义
#define UI_IS_IPHONE ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
#define IPHONE4      (UI_IS_IPHONE && [[UIScreen mainScreen] bounds].size.height < 568.0)
#define IPHONE5      (UI_IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 568.0)
#define IPHONE6      (UI_IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 667.0)
#define IPHONE6P     (UI_IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 736.0 || [[UIScreen mainScreen] bounds].size.width == 736.0) // Both orientations

#define SystemVersionGreaterThanOrEqualTo(version) ([[[UIDevice currentDevice] systemVersion] floatValue] >= version)
#define SystemVersionGreaterThanOrEqualTo5 SystemVersionGreaterThanOrEqualTo(5.0f)
#define SystemVersionGreaterThanOrEqualTo6 SystemVersionGreaterThanOrEqualTo(6.0f)
#define SystemVersionGreaterThanOrEqualTo7 SystemVersionGreaterThanOrEqualTo(7.0f)
#define SystemVersionGreaterThanOrEqualTo8 SystemVersionGreaterThanOrEqualTo(8.0f)
#define SystemVersionGreaterThanOrEqualTo9 SystemVersionGreaterThanOrEqualTo(9.0f)
#define SystemVersionGreaterThanOrEqualTo10 SystemVersionGreaterThanOrEqualTo(10.0f)
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

// -------------------------- 屏幕尺寸信息-------------------------- //

#define kWindowHeight CGRectGetHeight([UIScreen mainScreen].bounds)
#define kWindowHeightWithoutNavigationBar (kWindowHeight - 44 -20)
#define kWindowHeightWithoutNavigationBarAndTabbar (kWindowHeightWithoutNavigationBar - 49)
#define kWindowWidth CGRectGetWidth([UIScreen mainScreen].bounds)
#define kContentFrame CGRectMake(0, 0, kWindowWidth, kWindowHeight-20)
#define kContentFrameWithoutNavigationBar CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), kWindowHeightWithoutNavigationBar)
//#define kContentFrameWithoutNavigationBar kContentFrame
#define kContentFrameWithoutNavigationBarAndTabBar CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), kWindowHeightWithoutNavigationBarAndTabbar - 20)

// -------------------------- 屏幕适配-------------------------- //

#define MTTHeightFit(P) P*([UIScreen mainScreen].bounds.size.height/667)//以高度适配

#define MTTWidthFit(P) P*([UIScreen mainScreen].bounds.size.width/375)//以宽度适配

// -------------------------- 字体适配-------------------------- //
static inline CGFloat FontSize(CGFloat fontSize){
    if (kWindowWidth-320<3) {
        return fontSize-2;
    }else if (kWindowWidth-375<3){
        return fontSize;
    }else{
        return fontSize+2;
    }
}
#define MTTFONT_SIZE(size) ([UIFont systemFontOfSize:FontSize(size)])

#define MTTFONT_BOLDSIZE(size) ([UIFont boldSystemFontOfSize:FontSize(size)])

// -------------------------- Date Format -------------------------- //
#define kExtensionPNG                       @"png"



// -------------------------- Debug Log -------------------------- //
#ifndef MTTLog

#if DEBUG

#define MTTLog(fmt, ...) NSLog((@"%s [Line %d] " fmt),__PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);

#else

#define MTTLog(fmt, ...)

#endif

#endif

// --------------------------  Common Blcok-------------------------- //

typedef void (^BOOLBlock)(BOOL result);
typedef void (^VoidBlock)(void);
typedef void (^DictionaryBlock)(NSDictionary *result);
typedef void (^ArrayBlock)(NSArray *result);
typedef void (^StringBlock)(NSString *result);
typedef void (^CountArrayBlock)(NSArray *result,NSString *count);
typedef void (^ModelBlock)(id result);
typedef void (^ImageBlock)(UIImage *result);
typedef void (^ButtonBlock)(UIButton *result);
typedef void (^RefreshBlock)(NSArray *result, NSError *error);
typedef void (^ModelErrorMsgBlock)(id result,NSString *errorMsg);
typedef void (^IntegerBlock)(NSInteger integer);




#define MTTWeakObj(o) autoreleasepool{} __weak typeof(o) o##Weak = o;
#define MTTStrongObj(o) autoreleasepool{} __strong typeof(o) o = o##Weak;
#define MTT_SAFE_BLOCK(BlockName, ...) ({ !BlockName ? nil : BlockName(__VA_ARGS__); })





BOOL doubleEqualToDouble(double double1, double double2);
BOOL doubleEqualToDoubleWithAccuracyExponent(double double1, double double2 ,int accuracyExponent);




//

// .h
#define singleton_interface(class) +(instancetype) sharedManager;
// .m
#define singleton_implementation(class)         \
static class *_instance;                        \
\
+(id) allocWithZone : (struct _NSZone *) zone { \
static dispatch_once_t onceToken;           \
dispatch_once(&onceToken, ^{                \
_instance = [super allocWithZone:zone]; \
});                                         \
\
return _instance;                           \
}                                               \
\
+(instancetype) sharedManager               \
{                                           \
if (_instance == nil) {                     \
_instance = [[class alloc] init];       \
}                                           \
\
return _instance;                            \
}



#pragma mark - 颜色相关

/**
 *  RGB颜色
 *
 */
#define LHRGBColor(r,g,b)     [UIColor colorWithRed:(r)/255.0 green:(r)/255.0 blue:(r)/255.0 alpha:1.0]

/**
 *  随机颜色测试用
 *
 */
#define LHRandomColor   LHRGBColor(arc4random_uniform(256),arc4random_uniform(256),arc4random_uniform(256))

/**
 *   RGB或者16进制颜色
 */
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
/**
 *   RGB或者16进制颜色，可选alpha值
 */
#define UIColorFromRGBHalfAlpha(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:0.5]



#define kGetColor(r, g, b,a) [UIColor colorWithRed:(r / 255.0) green:(g / 255.0) blue:(b / 255.0) alpha:(a * 1.0)]
#define kWhiteColor [UIColor whiteColor]
#define kBlackColor [UIColor blackColor]
#define kClearColor [UIColor clearColor]
#define kGlobalBackColor kGetColor(255, 255, 255,1)//全局背景色
#define kGlobalBackGrayColor kGetColor(245, 247, 249,1)//全局背景灰色
#define kGlobalSeparatorColor kGetColor(238, 238, 238,1)//全局的分割线颜色
#define kGlobalBlueColor kGetColor(84, 170, 247, 1)//一种全局蓝色
#define kGlobalTextGrayColor kGetColor(153, 153, 153, 1)//一种灰色字体
#define kGlobalTextGrayColor2 kGetColor(102, 102, 102, 1)//另一种灰色字体
#define kGlobalTextBlackColor kGetColor(51, 51, 51, 1)//一种黑色字体



#define iPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kScreenWidth  [UIScreen mainScreen].bounds.size.width

//以6为标准尺寸
#define kIphoneStandardHeight 667.0
#define kIphoneStandardWidth 375.0
#define kIphoneHeightRatio (iPhoneX ? 1 : kScreenHeight / kIphoneStandardHeight)
#define kIphoneWidthRatio kScreenWidth / kIphoneStandardWidth
#define kTabBarHeight (iPhoneX ? 83 : 49) //导航栏的高度
#define kNavigationBarHeight (iPhoneX ? 88 : 64) //导航栏的高度
#define kStatusBarHeight (iPhoneX ? 44 : 20) //状态栏的高
#define kIphoneXBottomSafeArea 34
#define kMargin 14
#define kSectionHeadHeight 30
#define kCommonArrowWidth 9
#define kCommonArrowHeight 16
#define kCommonCellHeightHigh 74
#define kCommonCellAvatarWidth 43
#define kCommonCellHeightLow 52




#define kAppNameKey @"CFBundleName"

#define kFont(s) [UIFont systemFontOfSize:s]

#define kAppWindow [UIApplication sharedApplication].delegate.window

#define kAppName [[[NSBundle mainBundle] infoDictionary] objectForKey:kAppNameKey]

#define kSystemVersion [[UIDevice currentDevice].systemVersion floatValue]

#define kRootViewController [UIApplication sharedApplication].delegate.window.rootViewController

#define WEAK_SELF __weak typeof(self) weakSelf = self
#define STRONG_SELF if (!weakSelf) return; \
__strong typeof(weakSelf) strongSelf = weakSelf



#endif /* MTTComonDefine_h */
