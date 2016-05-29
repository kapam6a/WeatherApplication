//
//  WAInformationViewProtocol.h
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WAInformationViewInput <NSObject>

-(void)showAllertWindowWithError:(NSError*)error;
-(void)showData:(id)data;

@end

@protocol WAInformationViewOutput <NSObject>

-(void)uploadViewWithData:(id)info;

@end
