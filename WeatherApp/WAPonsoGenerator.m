//
//  PonsoGenerator.m
//  WeatherApp
//
//  Created by Kapam6a on 28.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WAPonsoGenerator.h"
#import "WADayPonso.h"
#import "WACityPonso.h"
#import "WAInformationPonso.h"
#import "City.h"
#import "Day.h"
#import "Information.h"

static NSString *const WAKeyForSortDiscriptorPonsoGenerator = @"date";

@implementation WAPonsoGenerator

-(WADayPonso*)convertCoreDataDay:(Day*)day
{
    WADayPonso *dayPonso = [WADayPonso new];
    dayPonso.date = day.date;
    dayPonso.dayTemperature = day.dayTemperature;
    dayPonso.nightTepmperature = day.nightTepmperature;
    return dayPonso;
}

-(WACityPonso*)convertCoreDataCity:(City*)city
{
    WACityPonso *cityPonso = [WACityPonso new];
    cityPonso.name = city.name;
    cityPonso.days = [self convertSetWithDays:city.days];
    return cityPonso;
}

-(NSArray*)convertSetWithDays:(NSSet*)days
{
    NSMutableArray *daysArray = [NSMutableArray new];
    for(Day *day in days.allObjects){
        WADayPonso *dayPonso = [self convertCoreDataDay:day];
        [daysArray addObject:dayPonso];
    }
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:WAKeyForSortDiscriptorPonsoGenerator ascending:YES];
    NSArray *orderedArray = [daysArray sortedArrayUsingDescriptors:@[sortDescriptor]];
    return orderedArray;
}

-(WAInformationPonso*)convertCoreDataInformation:(Information*)information
{
    WAInformationPonso *informationPonso = [WAInformationPonso new];
    informationPonso.humidity = information.humidity;
    informationPonso.descriptionOfWeather = information.descriptionOfWeather;
    informationPonso.longitude = information.longitude;
    informationPonso.latitude = information.latitude;
    informationPonso.pressure = information.pressure;
    informationPonso.windSpeed = information.windSpeed;
    return informationPonso;
}

@end
