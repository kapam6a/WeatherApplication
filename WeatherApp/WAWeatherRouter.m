//
//  WAWeatherRouter.m
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WAWeatherRouter.h"
#import "UIKit/UIKit.h"

static NSString *const WASegueIdForInformationViewControllerIdentifierWeatherRouter = @"WAInformationViewControllerIdentifier";
static NSString *const WASegueIdForSelectionViewControllerIdentifierWeatherRouter = @"WASelectionViewControllerIdentifier";

@implementation WAWeatherRouter

#pragma mark - WAWeatherRouterInput

-(void)didSelectNameOfCityButton:(id)sender
{
    NSString *data = [(UIButton*)sender currentTitle];
    [self.view openNewModuleWithSegueID:WASegueIdForInformationViewControllerIdentifierWeatherRouter withData:data];
}

-(void)didSelectSearchButton
{
    [self.view openNewModuleWithSegueID:WASegueIdForSelectionViewControllerIdentifierWeatherRouter withData:nil];
}

@end
