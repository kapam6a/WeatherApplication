//
//  WAWeatherRouter.h
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WAWeatherRouterProtocol.h"

@interface WAWeatherRouter : NSObject<WAWeatherRouterInput>

@property (weak, nonatomic) id<WAWeatherRouterOutput> view;

@end
