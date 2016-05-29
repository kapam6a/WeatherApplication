//
//  PonsoGenerator.h
//  WeatherApp
//
//  Created by Kapam6a on 28.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WACityPonso, City, WAInformationPonso, Information;

@interface WAPonsoGenerator : NSObject

-(WACityPonso*)convertCoreDataCity:(City*)city;
-(WAInformationPonso*)convertCoreDataInformation:(Information*)information;

@end
