//
//  Information+CoreDataProperties.h
//  WeatherApp
//
//  Created by Kapam6a on 29.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Information.h"

NS_ASSUME_NONNULL_BEGIN

@interface Information (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *humidity;
@property (nullable, nonatomic, retain) NSString *descriptionOfWeather;
@property (nullable, nonatomic, retain) NSString *longitude;
@property (nullable, nonatomic, retain) NSString *latitude;
@property (nullable, nonatomic, retain) NSString *pressure;
@property (nullable, nonatomic, retain) NSString *windSpeed;
@property (nullable, nonatomic, retain) NSDate *cacheDate;
@property (nullable, nonatomic, retain) City *city;

@end

NS_ASSUME_NONNULL_END
