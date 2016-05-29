//
//  WASelectionViewController.h
//  WeatherApp
//
//  Created by Kapam6a on 27.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WASelectionViewProtocol.h"
#import "WASelectionRouterProtocol.h"

@interface WASelectionViewController : UIViewController<WASelectionViewInput, WASelectionRouterOutput>

@property (weak, nonatomic) IBOutlet UITextField *cityNameTextField;
@property (strong, nonatomic) id<WASelectionViewOutput> presenter;

- (IBAction)doneButtonAction:(UIButton *)sender;
- (IBAction)cancelButtonAction:(UIButton *)sender;

@end
