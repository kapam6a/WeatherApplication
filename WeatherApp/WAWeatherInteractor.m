//
//  WAWeatherInteractor.m
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WAWeatherInteractor.h"
#import "WAWeatherService.h"
#import "WAPonsoGenerator.h"
#import "WACityPonso.h"

static NSString *const WADefaultCityNameWeatherInteractor = @"Moscow";

@implementation WAWeatherInteractor

#pragma mark -  WAWeatherInteractorInput

-(void)getDefaultData
{
    [self fetchDataWithCityName:WADefaultCityNameWeatherInteractor];
}

-(void)getDataWith:(NSString *)data
{
    [self fetchDataWithCityName:data];
}

-(void)fetchDataWithCityName:(NSString*)name
{
    WAPonsoGenerator *generator = [WAPonsoGenerator new];
    WAWeatherService *weatherService = [WAWeatherService new];
    [weatherService fetchDataOfCity:name
                             succes:^(id city) {
                                 WACityPonso *cityPonso = [generator convertCoreDataCity:city];
                                 [self.presenter didFetchCity:cityPonso];
                             } error:^(NSError *error) {
                                 [self.presenter failConnectionWithError:(NSError*)error];
                             }];
}

@end
