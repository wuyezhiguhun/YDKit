//
//  YDSingletonPattern.h
//  YDKit
//
//  Created by rowena on 2018/7/27.
//  Copyright © 2018年 王允顶. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YDSingletonPattern : NSObject

/**
 * 创建单例
 */
+ (instancetype)sharedInstance;

@end
