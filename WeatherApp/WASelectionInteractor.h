//
//  WASelectionInteractor.h
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WASelectionInteractorProtocol.h"

@interface WASelectionInteractor : NSObject<WASelectionInteractorInput>

@property (weak, nonatomic) id<WASelectionInteractorOutput> presenter;

@end
