//
//  YDBaiduMapPoiInfo.h
//  YDKit
//
//  Created by rowena on 2018/7/24.
//  Copyright © 2018年 王允顶. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BaiduMapAPI_Base/BMKBaseComponent.h>
#import <BaiduMapAPI_Search/BMKPoiSearch.h>
#import "YDMapPoiInfo.h"

@interface YDBaiduMapPoiInfo : NSObject<YDMapPoiInfo>

- (instancetype)initWithPoiInfo:(BMKPoiInfo *)poiInfo;

@end
