//
//  WAWeatherDataDisplayManager.m
//  WeatherApp
//
//  Created by Kapam6a on 29.05.16.
//  Copyright © 2016 Kapam6a. All rights reserved.
//

#import "WAWeatherDataDisplayManager.h"
#import "WACityPonso.h"
#import "WADayPonso.h"

static NSString *const WACellIdentifierWeatherViewControllerDataDisplayManager = @"WACellIdentifierWeatherViewControllerDataDisplayManager";
static NSString *const WADateFormatDataDisplayManager = @"MMM dd";

@interface WAWeatherDataDisplayManager()

@property (strong, nonatomic) WACityPonso *city;

@end

@implementation WAWeatherDataDisplayManager

-(void)reloadTableViewInformationWithData:(id)data
{
    self.city = data;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.city.days count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:WACellIdentifierWeatherViewControllerDataDisplayManager];
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:WACellIdentifierWeatherViewControllerDataDisplayManager];
    }
    cell.textLabel.text = [self textForCell:indexPath.row];
    return cell;
}

-(NSString*)textForCell:(NSInteger)index
{
    NSArray *days = self.city.days;
    WADayPonso *day = days[index];
    NSDate *date = day.date;
    
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:WADateFormatDataDisplayManager];
    NSString *dateString = [dateFormatter stringFromDate:date];
    
    NSString *text = [NSString stringWithFormat:@"%@, %@, %@",dateString, day.dayTemperature, day.nightTepmperature];
    return text;
}


@end
