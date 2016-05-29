//
//  City+CoreDataProperties.h
//  WeatherApp
//
//  Created by Kapam6a on 29.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "City.h"

NS_ASSUME_NONNULL_BEGIN

@interface City (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSDate *cacheDate;
@property (nullable, nonatomic, retain) NSSet<Day *> *days;
@property (nullable, nonatomic, retain) Information *information;

@end

@interface City (CoreDataGeneratedAccessors)

- (void)addDaysObject:(Day *)value;
- (void)removeDaysObject:(Day *)value;
- (void)addDays:(NSSet<Day *> *)values;
- (void)removeDays:(NSSet<Day *> *)values;

@end

NS_ASSUME_NONNULL_END
