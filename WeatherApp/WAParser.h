//
//  WAParser.h
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@class City,Information;

@interface WAParser : NSObject

-(Information*)parseInformation:(NSDictionary*)responseDictionary;
-(City*)parseTemperaturesDictionary:(NSDictionary*)responseDictionary;

@end
