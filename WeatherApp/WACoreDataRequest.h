//
//  WACoreDataRequest.h
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@class City,Information;

@interface WACoreDataRequest : NSObject

-(void)addCity:(City*)city;
-(City*)fetchCity:(NSString*)cityName;
-(Information*)fetchInformation:(NSString*)cityName;
-(void)addInformation:(Information *)information forCityWithName:(NSString*)cityName;

@end
