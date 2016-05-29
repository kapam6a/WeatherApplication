//
//  InformationPonso.h
//  WeatherApp
//
//  Created by Kapam6a on 28.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WAInformationPonso : NSObject

@property (nullable, nonatomic, retain) NSString *humidity;
@property (nullable, nonatomic, retain) NSString *descriptionOfWeather;
@property (nullable, nonatomic, retain) NSString *longitude;
@property (nullable, nonatomic, retain) NSString *latitude;
@property (nullable, nonatomic, retain) NSString *pressure;
@property (nullable, nonatomic, retain) NSString *windSpeed;

@end
