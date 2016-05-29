//
//  WAWeatherRouterProtocol.h
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WAWeatherRouterInput <NSObject>

-(void)didSelectNameOfCityButton:(id)sender;
-(void)didSelectSearchButton;

@end

@protocol WAWeatherRouterOutput <NSObject>

-(void)openNewModuleWithSegueID:(NSString*)identifier withData:(id)data;

@end