//
//  WASelectionViewController.m
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WASelectionViewController.h"

@interface WASelectionViewController ()

@end

@implementation WASelectionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - IBAction

- (IBAction)doneButtonAction:(UIButton *)sender
{
    [self.presenter didSelectDoneButtonWithData:self.cityNameTextField.text];
}

- (IBAction)cancelButtonAction:(UIButton *)sender
{
    [self.presenter didSelectCancelButton];
}

#pragma mark - WASelectionRouterOutput

-(void)dismissYourself
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
