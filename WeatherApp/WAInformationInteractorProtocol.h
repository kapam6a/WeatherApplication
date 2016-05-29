//
//  WAInformationInteractorProtocol.h
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WAInformationInteractorInput <NSObject>

-(void)getInformationWithData:(id)data;

@end

@protocol WAInformationInteractorOutput <NSObject>

-(void)didFetchInformation:(id)info;
-(void)failConnectionWithError:(NSError*)error;

@end