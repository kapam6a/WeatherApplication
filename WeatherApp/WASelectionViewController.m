//
//  WASelectionViewController.m
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WASelectionViewController.h"

static NSString *const WAAlertControllerTitleSelectionViewController = @"Wrong input!";
static NSString *const WAAlertControllerActionTitleSelectionViewController = @"OK";

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

#pragma mark - WASelectionRouterInput

-(void)showAlertWindowWithMessage:(NSString *)message
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:WAAlertControllerTitleSelectionViewController
                                                                             message:message
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:WAAlertControllerActionTitleSelectionViewController
                                                        style:UIAlertActionStyleCancel
                                                      handler:nil]];
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
