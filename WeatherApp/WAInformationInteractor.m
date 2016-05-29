//
//  WAInformationInteractor.m
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WAInformationInteractor.h"
#import "WAInformationService.h"
#import "WAPonsoGenerator.h"
#import "WAInformationPonso.h"

@implementation WAInformationInteractor

#pragma mark - WAInformationInteractorInput

-(void)getInformationWithData:(id)data
{
    WAPonsoGenerator *generator = [WAPonsoGenerator new];
    WAInformationService *informationService = [WAInformationService new];
    [informationService fetchInformationOfCity:data
                                        succes:^(id info) {
                                            WAInformationPonso *information = [generator convertCoreDataInformation:info];
                                            [self.presenter didFetchInformation:information];
                                        } error:^(NSError *error) {
                                            [self.presenter failConnectionWithError:error];
                                        }];
}

@end
