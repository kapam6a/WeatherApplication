//
//  WAWeatherAssembly.m
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WAWeatherAssembly.h"
#import "WAWeatherViewController.h"
#import "WAWeatherPresenter.h"
#import "WAWeatherInteractor.h"
#import "WAWeatherRouter.h"

@implementation WAWeatherAssembly

- (WAWeatherViewController *)weatherViewController
{
    return [TyphoonDefinition withClass:[WAWeatherViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(presenter) with:[self weatherPresenter]];
                          }];
}

- (WAWeatherPresenter *)weatherPresenter
{
    return [TyphoonDefinition withClass:[WAWeatherPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view) with:[self weatherViewController]];
                              [definition injectProperty:@selector(interactor) with:[self weatherInteractor]];
                              [definition injectProperty:@selector(router) with:[self weatherRouter]];
                              definition.scope = TyphoonScopeWeakSingleton;
                          }];
}

- (WAWeatherInteractor *)weatherInteractor
{
    return [TyphoonDefinition withClass:[WAWeatherInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(presenter) with:[self weatherPresenter]];
                          }];
}

- (WAWeatherRouter *)weatherRouter
{
    return [TyphoonDefinition withClass:[WAWeatherRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view) with:[self weatherViewController]];
                          }];
}

@end
