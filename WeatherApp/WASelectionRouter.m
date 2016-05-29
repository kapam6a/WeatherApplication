//
//  WASelectionRouter.m
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WASelectionRouter.h"

@implementation WASelectionRouter

#pragma mark - WASelectionRouterInput

-(void)didSelectDoneButton
{
    [self.view dismissYourself];
}

-(void)didSelectCancelButton
{
    [self.view dismissYourself];
}

@end
