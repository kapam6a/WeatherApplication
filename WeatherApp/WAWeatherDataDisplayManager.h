//
//  WAWeatherDataDisplayManager.h
//  WeatherApp
//
//  Created by Kapam6a on 29.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WAWeatherDataDisplayManager : NSObject<UITableViewDataSource>

-(void)reloadTableViewInformationWithData:(id)data;

@end
