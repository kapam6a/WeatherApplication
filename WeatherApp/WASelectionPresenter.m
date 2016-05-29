//
//  WASelectionPresenter.m
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WASelectionPresenter.h"

static NSString *const WAMessageWithEmptyTextFieldPresenter = @"Enter city name";

@implementation WASelectionPresenter

#pragma mark - WASelectionViewOutput

-(void)didSelectDoneButtonWithData:(NSString*)data
{
    if (data.length != 0) {
        [self.router didSelectDoneButton];
        [self.sourcePresenter getData:data];

    } else {
        [self.view showAlertWindowWithMessage:WAMessageWithEmptyTextFieldPresenter];
    }
}

-(void)didSelectCancelButton
{
    [self.router didSelectCancelButton];
}

@end
