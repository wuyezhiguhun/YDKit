//
//  YDAmapMapView.m
//  YDKit
//
//  Created by rowena on 2018/7/18.
//  Copyright © 2018年 王允顶. All rights reserved.
//

#import "YDAmapMapView.h"
#import <AMap2DMap-NO-IDFA/MAMapKit/MAMapView.h>
#import <MAMapKit/MAMapKit.h>

@interface YDAmapMapView()

@property (nonatomic, strong) MAMapView *mapView;
@property (nonatomic, strong) MAPointAnnotation *pointAnnotation;

@end

@implementation YDAmapMapView

//专门用于实现百度地图
//初始化百度地图
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super init];
    if (self) {
        self.mapView = [[MAMapView alloc] initWithFrame:frame];
    }
    return self;
}

- (UIView *)getView {
    return self.mapView;
}

//显示定位图层
- (void)showsUserLocation:(BOOL)isShowUserLocation {
    
}

//更新定位图层
- (void)updateLocationData:(id<YDUserLocation>)userLocation {
    if (self.pointAnnotation == nil) {
        self.pointAnnotation = [[MAPointAnnotation alloc] init];
        [self.pointAnnotation setCoordinate:[userLocation getLocation].coordinate];
        [self.mapView addAnnotation:self.pointAnnotation];
    }
    [self.pointAnnotation setCoordinate:[userLocation getLocation].coordinate];
    [self.mapView setCenterCoordinate:[userLocation getLocation].coordinate];
    
}

//设置定位模式
- (void)setUserTrackingModel:(YDUserTrackingMode)mode {
    
}

//设定是否总让选中的annotation置于最前面
- (void)setSelectedAnnotationViewFront:(BOOL)isSwlwctedAnnotationViewFront {

}

//当mapview即将被显示的时候调用，恢复之前存储的mapview状态
- (void)viewWillAppear {
    
}

//当mapview即将被隐藏的时候调用，存储当前mapview的状态
- (void)viewWillDisappear {
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
