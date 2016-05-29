//
//  Day+CoreDataProperties.h
//  WeatherApp
//
//  Created by Kapam6a on 29.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Day.h"

NS_ASSUME_NONNULL_BEGIN

@interface Day (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *nightTepmperature;
@property (nullable, nonatomic, retain) NSString *dayTemperature;
@property (nullable, nonatomic, retain) NSDate *date;
@property (nullable, nonatomic, retain) City *city;

@end

NS_ASSUME_NONNULL_END
