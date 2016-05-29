//
//  WAInformationViewController.h
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WAInformationViewProtocol.h"

@interface WAInformationViewController : UIViewController <WAInformationViewInput>

@property (strong, nonatomic) id<WAInformationViewOutput> presenter;

@property (weak, nonatomic) IBOutlet UILabel *humidityLabel;
@property (weak, nonatomic) IBOutlet UILabel *pressureLabel;
@property (weak, nonatomic) IBOutlet UILabel *longitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *latitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *windSpeedLabel;

@end
