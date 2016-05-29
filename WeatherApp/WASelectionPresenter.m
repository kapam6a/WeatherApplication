//
//  WASelectionPresenter.m
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WASelectionPresenter.h"

@implementation WASelectionPresenter

#pragma mark - WASelectionViewOutput

-(void)didSelectDoneButtonWithData:(NSString *)data
{
    [self.router didSelectDoneButton];
    [self.sourcePresenter getData:data];
}

-(void)didSelectCancelButton
{
    [self.router didSelectCancelButton];
}

@end
