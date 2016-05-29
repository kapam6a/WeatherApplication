//
//  WAInformationPresenter.h
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WAInformationViewProtocol.h"
#import "WAInformationRouterProtocol.h"
#import "WAInformationInteractorProtocol.h"

@interface WAInformationPresenter : NSObject<WAInformationInteractorOutput,WAInformationViewOutput>

@property (weak, nonatomic) id<WAInformationViewInput> view;
@property (strong, nonatomic) id<WAInformationInteractorInput> interactor;
@property (strong, nonatomic) id<WAInformationRouterInput> router;

@end
