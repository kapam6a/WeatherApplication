//
//  WAInformationService.m
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WAInformationService.h"
#import "WARemoteRequest.h"
#import "WACoreDataRequest.h"
#import "WAParser.h"
#import "Information.h"

const NSInteger WAStoreTimeInformationService = 86400;

@implementation WAInformationService

-(void)fetchInformationOfCity:(NSString*)cityName
                       succes:(SuccessBlock)success
                        error:(FailureBlock)failure
{
    WACoreDataRequest *coreDataRequest = [WACoreDataRequest new];
    Information *information = [coreDataRequest fetchInformation:cityName];

    NSDate *cacheDate = information.cacheDate;
    NSTimeInterval timeIntervalFromLastTimeCashing = -(cacheDate.timeIntervalSinceNow);
        
    if(timeIntervalFromLastTimeCashing > WAStoreTimeInformationService || information == nil){
            
        WAParser *parser = [WAParser new];
        WARemoteRequest *remoteRequest = [WARemoteRequest new];
        [remoteRequest requestInformationOfCity:cityName
                                         succes:^(id info) {
                                             Information *information = [parser parseInformation:info];
                                             success(information);
                                             [coreDataRequest addInformation:information forCityWithName:cityName];
                                         } error:^(NSError *error) {
                                             failure(error);
                                         }];
    } else {
        success(information);
    }
}

@end
