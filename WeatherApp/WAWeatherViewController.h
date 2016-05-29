//
//  WAWeatherViewController.h
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WAWeatherViewProtocol.h"
#import "WAWeatherRouterProtocol.h"

@interface WAWeatherViewController : UIViewController <WAWeatherViewInput, WAWeatherRouterOutput>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *temperatureLabel;
@property (weak, nonatomic) IBOutlet UIButton *nameOfCityButton;

- (IBAction)nameOfCityButtonAction:(id)sender;
- (IBAction)searchButtonAction:(id)sender;
- (IBAction)defaultCitiesSegmentedControlAction:(id)sender;

@property (strong, nonatomic) id<WAWeatherViewOutput> presenter;

@end
