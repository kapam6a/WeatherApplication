//
//  WAWeatherViewController.m
//  WeatherApp
//
//  Created by Kapam6a on 26.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WAWeatherViewController.h"
#import "UIViewController+DataProperty.h"
#import "WACityPonso.h"
#import "WADayPosno.h"
#import "WAWeatherDataDisplayManager.h"

static NSString *const WAAlertControllerTitleWeatherViewController = @"Failure connection!";
static NSString *const WAAlertControllerActionTitleWeatherViewController = @"OK";

@interface WAWeatherViewController ()

@property (strong, nonatomic) WAWeatherDataDisplayManager *displayManager;

@end

@implementation WAWeatherViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.displayManager = [WAWeatherDataDisplayManager new];
    self.tableView.dataSource = self.displayManager;
    [self.presenter uploadView];
}

#pragma mark - WAWeatherViewInput

-(void)showAllertWindowWithError:(NSError *)error
{
    NSString *message = error.localizedDescription;
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:WAAlertControllerTitleWeatherViewController
                                                                message:message
                                                         preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:WAAlertControllerActionTitleWeatherViewController
                                                        style:UIAlertActionStyleCancel
                                                      handler:^(UIAlertAction *action) {
                                                          [self dismissViewControllerAnimated:YES completion:nil];
                                                      }]];
    [self presentViewController:alertController animated:YES completion:nil];
}

-(void)showDataWith:(WACityPonso*)city;
{
    [self.nameOfCity setTitle:city.name forState:UIControlStateNormal];
    WADayPosno *day = city.days[0];
    self.temperatureLabel.text = day.dayTemperature;
    [self.displayManager reloadTableViewInformationWithData:city];
    [self.tableView reloadData];
}

#pragma mark - IBAction

- (IBAction)nameOfCityButtonAction:(id)sender
{
    [self.presenter didSelectNameOfCityButton:sender];
}

- (IBAction)editButtonAction:(id)sender
{
    [self.presenter didSelectEditButton:sender];
}

#pragma mark - WAWeatherRouterOutput

-(void)openNewModuleWithSegueID:(NSString*)identifier withData:(id)data
{
    [self performSegueWithIdentifier:identifier sender:data];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)data
{
    segue.destinationViewController.dataProperty = data;
}

@end
