//
//  WASelectionAssembly.m
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WASelectionAssembly.h"
#import "WASelectionViewController.h"
#import "WASelectionPresenter.h"
#import "WASelectionInteractor.h"
#import "WASelectionRouter.h"

@implementation WASelectionAssembly

- (WASelectionViewController *)selectionViewController
{
    return [TyphoonDefinition withClass:[WASelectionViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(presenter) with:[self selectionPresenter]];
                          }];
}

- (WASelectionPresenter *)selectionPresenter
{
    return [TyphoonDefinition withClass:[WASelectionPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view) with:[self selectionViewController]];
                              [definition injectProperty:@selector(interactor) with:[self selectionInteractor]];
                              [definition injectProperty:@selector(router) with:[self selectionRouter]];
                              [definition injectProperty:@selector(sourcePresenter)];
                          }];
}

- (WASelectionInteractor *)selectionInteractor
{
    return [TyphoonDefinition withClass:[WASelectionInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(presenter) with:[self selectionPresenter]];
                          }];
}

- (WASelectionRouter *)selectionRouter
{
    return [TyphoonDefinition withClass:[WASelectionRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view) with:[self selectionViewController]];
                          }];
}

@end
