//
//  CPPlacemark.h
//  ChargingPile
//
//  Created by ZL on 16/11/8.
//  Copyright © 2016年 LittleShrimp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
@interface CPPlacemark : NSObject
/**
 *国家
 */
@property (nonatomic, copy) NSString *country;
/**
 * 省
 */
@property (nonatomic, copy) NSString *province;
/**
 * 城市
 */
@property (nonatomic, copy) NSString *city;
/**
 * 县
 */
@property (nonatomic, copy) NSString *county;
/**
 * 详情地址
 */
@property (nonatomic, copy) NSString *address;

@property (nonatomic, assign) int placemarkId;
/**
 *
 */
@property (nonatomic, copy) NSString *type;
/**
 * 纬度
 */
@property(nonatomic,assign)CLLocationDegrees latitude;
/**
 * 经度
 */
@property(nonatomic,assign) CLLocationDegrees longitude;

- (NSString *)getProvinceAndCity;

+ (CPPlacemark *)initWithCLPlacemark:(CLPlacemark *)placemark;
@end
