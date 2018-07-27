//
//  YDAmapMapPoiInfo.m
//  YDKit
//
//  Created by rowena on 2018/7/27.
//  Copyright © 2018年 王允顶. All rights reserved.
//

#import "YDAmapMapPoiInfo.h"

@interface YDAmapMapPoiInfo()

@property (nonatomic, strong) AMapPOI *poiInfo;

@end

@implementation YDAmapMapPoiInfo

- (instancetype)initWithPoi:(AMapPOI *)poi {
    self = [super init];
    if (self) {
        self.poiInfo = poi;
    }
    return self;
}

/// POI名称
- (NSString *)getName {
    return self.poiInfo.name;
}
/// POI坐标
- (CLLocationCoordinate2D)getPt {
    AMapGeoPoint *point = self.poiInfo.location;
    return CLLocationCoordinate2DMake(point.latitude, point.longitude);
}
/// POI地址信息
- (NSString *)getAddress {
    return self.poiInfo.address;
}
/// POI电话号码
- (NSString *)getPhone {
    return self.poiInfo.tel;
}
/// POI唯一标识符uid
- (NSString *)getUID {
    return self.poiInfo.uid;
}
/// POI所在省份
- (NSString *)getProvince {
    return self.poiInfo.province;
}
/// POI所在城市
- (NSString *)getCity {
    return self.poiInfo.city;
}
/// POI所在行政区域
- (NSString *)getArea {
    return self.poiInfo.district;
}
/// POI对应的街景图ID
- (NSString *)getStreetID {
    return self.poiInfo.shopID;
}
/// POI是否有详情信息
- (BOOL)getHasDetailInfo {
    return NO;
}

@end
