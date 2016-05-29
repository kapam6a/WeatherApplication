//
//  WASelectionRouter.h
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WASelectionRouterProtocol.h"

@interface WASelectionRouter : NSObject<WASelectionRouterInput>

@property (weak, nonatomic) id<WASelectionRouterOutput> view;

@end
