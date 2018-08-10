//
//  YDConstant.m
//  YDKit
//
//  Created by rowena on 2018/6/26.
//  Copyright © 2018年 王允顶. All rights reserved.
//

#import "YDConstant.h"

@interface YDConstant()

/** 记录当前APP是哪个 */
@property (nonatomic, assign) YDAppType appType;

@end

@implementation YDConstant

static YDConstant *constant = nil;
/** 创建单例 */
+ (instancetype)shareConstant {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        constant = [[YDConstant alloc] init];
    });
    return constant;
}
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (constant == nil) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            constant = [super allocWithZone:zone];
        });
    }
    return constant;
}
- (instancetype)init {
    self = [super init];
    if (self) {
        self.appType = YDAppTypeObjectC;
        NSString *bundleId = [[NSBundle mainBundle] bundleIdentifier];
        if ([bundleId isEqualToString:@"com.wuyezhiguhun.YDKit"]) {
            self.appType = YDAppTypeObjectC;
        } else if ([bundleId isEqualToString:@"com.wuyezhiguhun.YDSwiftKit"]) {
            self.appType = YDAppTypeSwift;
        }
    }
    return self;
}
/**
 * 获取当前APP是哪个
 * @return 返回APP类型
 */
+ (YDAppType)appType {
    YDAppType type = YDAppTypeObjectC;
    NSString *bundleId = [[NSBundle mainBundle] bundleIdentifier];
    if ([bundleId isEqualToString:@"com.wuyezhiguhun.YDKit"]) {
        type = YDAppTypeObjectC;
    } else if ([bundleId isEqualToString:@"com.wuyezhiguhun.YDSwiftKit"]) {
        type = YDAppTypeSwift;
    }
    
    return type;
}
- (NSString *)appDelegateName {
    if (self.appType == YDAppTypeObjectC) {
        return @"AppDelegate";
    } else if (self.appType == YDAppTypeSwift) {
        return @"YDAppDelegate";
    }
    return @"AppDelegate";
}

@end
