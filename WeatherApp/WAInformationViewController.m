//
//  WAInformationViewController.m
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WAInformationViewController.h"
#import "UIViewController+DataProperty.h"
#import "WAInformationPonso.h"

static NSString *const WAAlertControllerTitleInformationViewController = @"Failure connection!";
static NSString *const WAAlertControllerActionTitleInformationViewController = @"OK";

@implementation WAInformationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.presenter uploadViewWithData:self.dataProperty];
}

#pragma mark - WAInformationViewInput

-(void)showData:(id)info
{
    WAInformationPonso *information = info;
    self.humidityLabel.text = information.humidity;
    self.pressureLabel.text = information.pressure;
    self.longitudeLabel.text = information.longitude;
    self.latitudeLabel.text = information.latitude;
    self.descriptionLabel.text = information.descriptionOfWeather;
    self.windSpeedLabel.text = information.windSpeed;
}

-(void)showAllertWindowWithError:(NSError *)error
{
    NSString *message = error.localizedDescription;
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:WAAlertControllerTitleInformationViewController
                                                                message:message
                                                         preferredStyle:UIAlertControllerStyleAlert];
    [ac addAction:[UIAlertAction actionWithTitle:WAAlertControllerActionTitleInformationViewController
                                           style:UIAlertActionStyleCancel
                                         handler:nil]];
    [self presentViewController:ac animated:YES completion:nil];
}

@end
