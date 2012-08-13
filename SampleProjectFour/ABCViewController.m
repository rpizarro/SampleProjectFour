//
//  ABCViewController.m
//  SampleProjectFour
//
//  Created by Rodrigo Pizarro G. on 10-08-12.
//  Copyright (c) 2012 Excelsys. All rights reserved.
//

#import "ABCViewController.h"

@interface ABCViewController ()

@end

@implementation ABCViewController

@synthesize titles;

- (void)viewDidLoad
{

    [self.tableView setDelegate:self];
    self.titles = [NSArray arrayWithObjects:@"Red", @"Green", @"Blue", @"Purple", nil];
    
    [super viewDidLoad];
}

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.titles.count;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [self.titles objectAtIndex:indexPath.row];
    [cell setAccessibilityLabel:[self.titles objectAtIndex:indexPath.row]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.navigationController.navigationBar.topItem.title = [NSString stringWithFormat:@"Selected: %@", [self.titles objectAtIndex:indexPath.row]];
}

@end
