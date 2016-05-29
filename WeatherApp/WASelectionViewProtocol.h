//
//  WASelectionViewProtocol.h
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WASelectionViewInput <NSObject>

@end

@protocol WASelectionViewOutput <NSObject>

-(void)didSelectDoneButtonWithData:(id)data;
-(void)didSelectCancelButton;

@end