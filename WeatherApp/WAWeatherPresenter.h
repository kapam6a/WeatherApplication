//
//  WAWeatherPresenter.h
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WAWeatherViewProtocol.h"
#import "WAWeatherInteractorProtocol.h"
#import "WAWeatherRouterProtocol.h"
#import "WASelectionModuleIOProtocol.h"

@interface WAWeatherPresenter : NSObject<WAWeatherViewOutput, WAWeatherInteractorOutput, WASelectionModuleOutput>

@property (weak, nonatomic) id<WAWeatherViewInput> view;
@property (strong, nonatomic) id<WAWeatherInteractorInput> interactor;
@property (strong, nonatomic) id<WAWeatherRouterInput> router;

@end
