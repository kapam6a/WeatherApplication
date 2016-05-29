//
//  WARequest.m
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WARemoteRequest.h"
#import "AFNetworking/AFNetworking.h"

static NSString *const WAURLStringWeatherGetRequestRemoteRequest = @"http://api.openweathermap.org/data/2.5/forecast/daily";
static NSString *const WAURLStringInformationGetRequestRemoteRequest = @"http://api.openweathermap.org/data/2.5/weather";
static NSString *const WAKeyCityNameParametersDictionaryRemoteRequest = @"q";
static NSString *const WAKeyIDParametersDictionaryRemoteRequest = @"APPID";
static NSString *const WAIDParametersDictionaryRemoteRequest = @"c69d43b61ac2d16d389fb932321ff37d";
static NSString *const WAKeyModeParametersDictionaryRemoteRequest = @"mode";
static NSString *const WAModeParametersDictionaryRemoteRequest = @"JSON";
static NSString *const WAKeyUnitsParametersDictionaryRemoteRequest = @"units";
static NSString *const WAUnitsParametersDictionaryRemoteRequest = @"metric";
static NSString *const WAKeyCountParametersDictionaryRemoteRequest = @"cnt";
static NSString *const WACountParametersDictionaryRemoteRequest = @"7";

@implementation WARemoteRequest

-(void)requestWeatherOfCity:(NSString*)cityName
                     succes:(SuccessBlock)success
                      error:(FailureBlock)failure
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSDictionary *parameters = @{WAKeyCityNameParametersDictionaryRemoteRequest:cityName,
                                     WAKeyModeParametersDictionaryRemoteRequest:WAModeParametersDictionaryRemoteRequest,
                                    WAKeyUnitsParametersDictionaryRemoteRequest:WAUnitsParametersDictionaryRemoteRequest,
                                    WAKeyCountParametersDictionaryRemoteRequest:WACountParametersDictionaryRemoteRequest,
                                       WAKeyIDParametersDictionaryRemoteRequest:WAIDParametersDictionaryRemoteRequest};
    [manager GET:WAURLStringWeatherGetRequestRemoteRequest
      parameters:parameters
        progress:nil
         success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
             success(responseObject);
         }
         failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
             failure(error);
         }];
}

-(void)requestInformationOfCity:(NSString*)cityName
                         succes:(SuccessBlock)success
                          error:(FailureBlock)failure
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSDictionary *parameters = @{WAKeyCityNameParametersDictionaryRemoteRequest:cityName,
                                       WAKeyIDParametersDictionaryRemoteRequest:WAIDParametersDictionaryRemoteRequest};
    [manager GET:WAURLStringInformationGetRequestRemoteRequest
      parameters:parameters
        progress:nil
         success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
             success(responseObject);
         }
         failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
             failure(error);
         }];
}

@end

