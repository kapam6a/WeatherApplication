//
//  WAInformationInteractor.h
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WAInformationInteractorProtocol.h"

@interface WAInformationInteractor : NSObject <WAInformationInteractorInput>

@property (weak, nonatomic) id<WAInformationInteractorOutput> presenter;

@end
