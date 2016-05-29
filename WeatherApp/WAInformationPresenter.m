//
//  WAInformationPresenter.m
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WAInformationPresenter.h"

@implementation WAInformationPresenter

#pragma mark - WAInformationViewOutput

-(void)uploadViewWithData:(id)data
{
    [self.interactor getInformationWithData:data];
}

#pragma mark - WAInformationInteractorOutput

-(void)didFetchInformation:(id)info
{
    [self.view showData:info];
}

-(void)failConnectionWithError:(NSError *)error
{
    [self.view showAllertWindowWithError:error];
}

@end
