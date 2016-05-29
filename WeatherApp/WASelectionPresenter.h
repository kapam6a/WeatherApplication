//
//  WASelectionPresenter.h
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WASelectionViewProtocol.h"
#import "WASelectionInteractorProtocol.h"
#import "WASelectionRouterProtocol.h"
#import "WASelectionModuleIOProtocol.h"

@interface WASelectionPresenter : NSObject <WASelectionViewOutput, WASelectionInteractorOutput>

@property (weak, nonatomic) id<WASelectionViewInput> view;
@property (strong, nonatomic) id<WASelectionInteractorInput> interactor;
@property (strong, nonatomic) id<WASelectionRouterInput> router;
@property (strong, nonatomic) id<WASelectionModuleOutput> sourcePresenter;

@end