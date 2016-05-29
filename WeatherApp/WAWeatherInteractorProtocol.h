//
//  WAWeatherInteractorProtocol.h
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WAWeatherInteractorInput <NSObject>

-(void)getDefaultData;
-(void)getDataWith:(id)data;

@end

@protocol WAWeatherInteractorOutput <NSObject>

-(void)didFetchCity:(id)city;
-(void)failConnectionWithError:(NSError*)error;

@end
