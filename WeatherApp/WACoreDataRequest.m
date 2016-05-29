//
//  WACoreDataRequest.m
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WACoreDataRequest.h"
#import "WACoreData.h"
#import "City.h"
#import "Information.h"

static NSString *const WANameCityEntityCoreDataRequest = @"City";

@implementation WACoreDataRequest

-(City*)fetchCity:(NSString*)cityName
{
    WACoreData *coreData = [WACoreData sharedCoreData];
    NSManagedObjectContext *context = [coreData managedObjectContext];
    NSFetchRequest *fetch = [NSFetchRequest new];
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:WANameCityEntityCoreDataRequest  inManagedObjectContext: context];
    [fetch setEntity:entityDescription];
    [fetch setPredicate:[NSPredicate predicateWithFormat:@"self.name=%@", cityName]];
    NSError * error = nil;
    NSArray *fetchedObjects = [context executeFetchRequest:fetch error:&error];
    if (fetchedObjects.count !=0) {
         return [fetchedObjects firstObject];
    }
    return nil;
}

-(void)addCity:(City*)city
{
    WACoreData *coreData = [WACoreData sharedCoreData];
    NSManagedObjectContext *context = [coreData managedObjectContext];
    City *fetchCity = [self fetchCity:city.name];
    if(fetchCity){
        fetchCity.days = city.days;
    }
    NSError *error;
    if (![context save:&error]) {
        NSLog(@"%@", [error localizedDescription]);
    }
}

-(Information*)fetchInformation:(NSString*)cityName
{
    City *city = [self fetchCity:cityName];
    Information *information = city.information;
    return information;
}

-(void)addInformation:(Information *)information forCityWithName:(NSString*)cityName
{
    WACoreData *coreData = [WACoreData sharedCoreData];
    NSManagedObjectContext *context = [coreData managedObjectContext];
    City *fetchCity = [self fetchCity:cityName];
    if(fetchCity){
        fetchCity.information = information;
    }
    NSError *error;
    if (![context save:&error]) {
        NSLog(@"%@", [error localizedDescription]);
    }
}

@end
