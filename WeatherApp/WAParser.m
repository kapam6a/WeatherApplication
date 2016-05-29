//
//  WAParser.m
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WAParser.h"
#import "City.h"
#import "Day.h"
#import "Information.h"
#import "WACoreData.h"

static NSString *const WANameCityEntityParser = @"City";
static NSString *const WANameDayEntityParser = @"Day";
static NSString *const WAKeyListTemperaturesDictionaryParser = @"list";
static NSString *const WAKeyCityTemperaturesDictionaryParser = @"city";
static NSString *const WAKeyNameTemperaturesDictionaryParser = @"name";
static NSString *const WAKeyDateTemperaturesDictionaryParser = @"dt";
static NSString *const WAKeyTemperatureTemperaturesDictionaryParser = @"temp";
static NSString *const WAKeyDayTemperatureTemperaturesDictionaryParser = @"day";
static NSString *const WAKeyNightTepmperatureTemperaturesDictionaryParser = @"night";

static NSString *const WANameInformationEntityParser = @"Information";
static NSString *const WAKeyMainInformationDictionaryParser = @"main";
static NSString *const WAKeyHumidityInformationDictionaryParser = @"humidity";
static NSString *const WAKeyPressureInformationDictionaryParser = @"pressure";
static NSString *const WAKeyCoordinatesInformationDictionaryParser = @"coord";
static NSString *const WAKeyLatitudeInformationDictionaryParser = @"lat";
static NSString *const WAKeyLongitudeInformationDictionaryParser = @"lon";
static NSString *const WAKeyWeatherInformationDictionaryParser = @"weather";
static NSString *const WAKeyDescriptionInformationDictionaryParser = @"description";
static NSString *const WAKeyWindInformationDictionaryParser = @"wind";
static NSString *const WAKeySpeedInformationDictionaryParser = @"speed";

@implementation WAParser

-(City*)parseTemperaturesDictionary:(NSDictionary*)responseDictionary
{
    NSManagedObjectContext *context = [WACoreData sharedCoreData].managedObjectContext;
    NSEntityDescription *entityDescriptionForCity = [NSEntityDescription entityForName:WANameCityEntityParser
                                                                inManagedObjectContext:context];
    NSEntityDescription *entityDescriptionForDay = [NSEntityDescription entityForName:WANameDayEntityParser
                                                               inManagedObjectContext:context];
    City *city = [[City alloc] initWithEntity:entityDescriptionForCity
               insertIntoManagedObjectContext:context];
    city.cacheDate = [NSDate date];
    
    NSArray *list = responseDictionary[WAKeyListTemperaturesDictionaryParser];
    NSDictionary *cityInfo = responseDictionary[WAKeyCityTemperaturesDictionaryParser];
    city.name = cityInfo[WAKeyNameTemperaturesDictionaryParser];
    
    for (NSDictionary *object in list){
        
        Day *day = [[Day alloc] initWithEntity:entityDescriptionForDay insertIntoManagedObjectContext:context];
        NSTimeInterval dateInSeconds = [object[WAKeyDateTemperaturesDictionaryParser] doubleValue];
        NSDate *date = [NSDate dateWithTimeIntervalSince1970:dateInSeconds];

        NSDictionary *temperature = object [WAKeyTemperatureTemperaturesDictionaryParser];
        NSString *dayTemperature = temperature[WAKeyDayTemperatureTemperaturesDictionaryParser];
        dayTemperature = [self parseTemperature:dayTemperature];
        
        NSString * nightTepmperature = temperature[WAKeyNightTepmperatureTemperaturesDictionaryParser];
        nightTepmperature = [self parseTemperature:nightTepmperature];
        
        day.date = date;
        day.dayTemperature = dayTemperature;
        day.nightTepmperature = nightTepmperature;
        
        [city addDaysObject:day];
    }
    return city;
}

-(Information*)parseInformation:(NSDictionary*)responseDictionary
{
    NSManagedObjectContext *context = [WACoreData sharedCoreData].managedObjectContext;
    NSEntityDescription *entityDescriptionForCity = [NSEntityDescription entityForName:WANameInformationEntityParser
                                                                inManagedObjectContext:context];
    Information *information = [[Information alloc] initWithEntity:entityDescriptionForCity
                                    insertIntoManagedObjectContext:context];
    
    NSDictionary *main = responseDictionary[WAKeyMainInformationDictionaryParser];
    information.humidity = [NSString stringWithFormat:@"%@", main[WAKeyHumidityInformationDictionaryParser]];
    information.pressure = [NSString stringWithFormat:@"%@", main[WAKeyPressureInformationDictionaryParser]];
    
    NSDictionary *coordinates = responseDictionary[WAKeyCoordinatesInformationDictionaryParser];
    information.latitude = [NSString stringWithFormat:@"%@", coordinates[WAKeyLatitudeInformationDictionaryParser]];
    information.longitude = [NSString stringWithFormat:@"%@", coordinates[WAKeyLongitudeInformationDictionaryParser]];
   
    NSArray *weather = responseDictionary[WAKeyWeatherInformationDictionaryParser];
    NSDictionary *weatherDictionary = weather[0];
    information.descriptionOfWeather = [NSString stringWithFormat:@"%@", weatherDictionary[WAKeyDescriptionInformationDictionaryParser]];
    
    NSDictionary *wind = [responseDictionary objectForKey:WAKeyWindInformationDictionaryParser];
    information.windSpeed = [NSString stringWithFormat:@"%@", wind[WAKeySpeedInformationDictionaryParser]];
    information.cacheDate = [NSDate date];
    
    return information;
}

-(NSString*)parseTemperature:(NSString*)temperature
{
    NSInteger temp = [temperature integerValue];
    if(temp > 0){
        temperature = [NSString stringWithFormat:@"+%li", temp];
    } else if (temp < 0) {
        temperature = [NSString stringWithFormat:@"-%li", temp];
    } else {
        temperature = [NSString stringWithFormat:@"%li", temp];
    }
    return temperature;
}

@end
