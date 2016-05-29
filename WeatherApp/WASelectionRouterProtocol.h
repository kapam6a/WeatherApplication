//
//  WASelectionRouterProtocol.h
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WASelectionRouterInput <NSObject>

-(void)didSelectDoneButton;
-(void)didSelectCancelButton;

@end

@protocol WASelectionRouterOutput <NSObject>

-(void)dismissYourself;

@end
