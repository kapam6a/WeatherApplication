//
//  WAWeatherService.m
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WAWeatherService.h"
#import "WACoreDataRequest.h"
#import "WARemoteRequest.h"
#import "WAParser.h"
#import "City.h"
#import "Day.h"

const NSInteger WAStoreTimeWeatherService = 604800;

@implementation WAWeatherService

-(void)fetchDataOfCity:(NSString*)cityName
                         succes:(SuccessBlock)success
                          error:(FailureBlock)failure
{
    WACoreDataRequest *coreDataRequest = [WACoreDataRequest new];
    City *city = [coreDataRequest fetchCity:cityName];
        
    NSDate *cacheDate = city.cacheDate;
    NSTimeInterval timeIntervalFromLastTimeCashing = -(cacheDate.timeIntervalSinceNow);
        
    if(timeIntervalFromLastTimeCashing > WAStoreTimeWeatherService || city == nil){
            
    WAParser *parser = [WAParser new];
    WARemoteRequest *remoteRequest = [WARemoteRequest new];
    [remoteRequest requestWeatherOfCity:cityName
                                 succes:^(NSDictionary *days) {
                                     City *city = [parser parseTemperaturesDictionary:days];
                                     success(city);
                                     [coreDataRequest addCity:city];
                                 } error:^(NSError *error) {
                                     failure(error);
                                 }];

    } else {
        success(city);
    }
}

@end
