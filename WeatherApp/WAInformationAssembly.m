//
//  WAInformationAssembly.m
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WAInformationAssembly.h"
#import "WAInformationViewController.h"
#import "WAInformationPresenter.h"
#import "WAInformationInteractor.h"
#import "WAInformationRouter.h"

@implementation WAInformationAssembly

- (WAInformationViewController *)informationViewController
{
    return [TyphoonDefinition withClass:[WAInformationViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(presenter) with:[self informationPresenter]];
                          }];
}

- (WAInformationPresenter *)informationPresenter
{
    return [TyphoonDefinition withClass:[WAInformationPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view) with:[self informationViewController]];
                              [definition injectProperty:@selector(interactor) with:[self informationInteractor]];
                              [definition injectProperty:@selector(router) with:[self informationRouter]];
                          }];
}

- (WAInformationInteractor *)informationInteractor
{
    return [TyphoonDefinition withClass:[WAInformationInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(presenter) with:[self informationPresenter]];
                          }];
}

- (WAInformationRouter *)informationRouter
{
    return [TyphoonDefinition withClass:[WAInformationRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                          }];
}

@end
