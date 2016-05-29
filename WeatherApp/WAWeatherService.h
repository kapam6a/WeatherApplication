//
//  WAWeatherService.h
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^SuccessBlock)(id);
typedef void (^FailureBlock)(NSError*);

@interface WAWeatherService : NSObject

-(void)fetchDataOfCity:(NSString*)cityName succes:(SuccessBlock)success error:(FailureBlock)failure;

@end
