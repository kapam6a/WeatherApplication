//
//  WAWeatherInteractor.h
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WAWeatherInteractorProtocol.h"

@interface WAWeatherInteractor : NSObject<WAWeatherInteractorInput>

@property (weak, nonatomic) id<WAWeatherInteractorOutput> presenter;

@end
