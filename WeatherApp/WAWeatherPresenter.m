//
//  WAWeatherPresenter.m
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WAWeatherPresenter.h"

@implementation WAWeatherPresenter

#pragma mark -  WAWeatherViewOutput

-(void)uploadView
{
    [self.interactor getDefaultData];
}

-(void)didSelectNameOfCityButton:(id)sender
{
    [self.router didSelectNameOfCityButton:sender];
}

-(void)didSelectEditButton:(id)sender
{
    [self.router didSelectEditButton:sender];
}

#pragma mark -  WAWeatherInteractorOutput

-(void)didFetchCity:(id)city
{
    [self.view showDataWith:city];
}

-(void)failConnectionWithError:(NSError *)error
{
    [self.view showAllertWindowWithError:error];
}

#pragma mark - WASelectionModuleOutput

-(void)getData:(NSString *)data
{
    [self.interactor getDataWith:data];
}

@end
