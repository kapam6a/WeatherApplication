//
//  WAWeatherViewProtocol.h
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WAWeatherViewInput <NSObject>

-(void)showDataWith:(id)city;
-(void)showAllertWindowWithError:(NSError*)error;

@end

@protocol WAWeatherViewOutput <NSObject>

-(void)uploadView;
-(void)didSelectNameOfCityButton:(id)sender;
-(void)didSelectSearchButton;
-(void)didSelectDefaultCititesSegmentedControl:(id)data;

@end
