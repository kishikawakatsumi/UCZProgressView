//
//  SettingsViewController.m
//  UCZProgressView
//
//  Created by kishikawa katsumi on 2014/12/14.
//  Copyright (c) 2014 kishikawa katsumi. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@property (nonatomic) IBOutlet UISwitch *indeterminateSwitch;
@property (nonatomic) IBOutlet UISwitch *blurEffectSwitch;
@property (nonatomic) IBOutlet UISwitch *indicatorTextSwitch;
@property (nonatomic) IBOutlet UISwitch *customTintColorSwitch;
@property (nonatomic) IBOutlet UISwitch *customTextColorSwitch;
@property (nonatomic) IBOutlet UIStepper *lineWidthStepper;
@property (nonatomic) IBOutlet UILabel *lineWidthLabel;
@property (nonatomic) IBOutlet UIStepper *radiusStepper;
@property (nonatomic) IBOutlet UILabel *radiusLabel;
@property (nonatomic) IBOutlet UIStepper *textFontSizeStepper;
@property (nonatomic) IBOutlet UILabel *textFontSizeLabel;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight = 44.0;
    self.tableView.estimatedRowHeight = 44.0;
    
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"indeterminate"]) {
        self.indeterminateSwitch.on = [[NSUserDefaults standardUserDefaults] boolForKey:@"indeterminate"];
    }
    self.blurEffectSwitch.on = [[NSUserDefaults standardUserDefaults] boolForKey:@"blurEffect"];
    self.indicatorTextSwitch.on = [[NSUserDefaults standardUserDefaults] boolForKey:@"indicatorText"];
    self.customTintColorSwitch.on = [[NSUserDefaults standardUserDefaults] boolForKey:@"customTintColor"];
    self.customTextColorSwitch.on = [[NSUserDefaults standardUserDefaults] boolForKey:@"customTextColor"];
    
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"lineWidth"]) {
        self.lineWidthStepper.value = [[NSUserDefaults standardUserDefaults] doubleForKey:@"lineWidth"];
        self.lineWidthLabel.text = [NSString stringWithFormat:@"%@", @(self.lineWidthStepper.value)];
    }
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"radius"]) {
        self.radiusStepper.value = [[NSUserDefaults standardUserDefaults] doubleForKey:@"radius"];
        self.radiusLabel.text = [NSString stringWithFormat:@"%@", @(self.radiusStepper.value)];
    }
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"textFontSize"]) {
        self.textFontSizeStepper.value = [[NSUserDefaults standardUserDefaults] doubleForKey:@"textFontSize"];
        self.textFontSizeLabel.text = [NSString stringWithFormat:@"%@", @(self.textFontSizeStepper.value)];
    }
}

#pragma mark -

- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark -

- (IBAction)indeterminateSwitchValueChanged:(id)sender {
    [[NSUserDefaults standardUserDefaults] setBool:self.indeterminateSwitch.isOn forKey:@"indeterminate"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (IBAction)blurEffectSwitchValueChanged:(id)sender {
    [[NSUserDefaults standardUserDefaults] setBool:self.blurEffectSwitch.isOn forKey:@"blurEffect"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (IBAction)indicatorTextSwitchValueChanged:(id)sender {
    [[NSUserDefaults standardUserDefaults] setBool:self.indicatorTextSwitch.isOn forKey:@"indicatorText"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (IBAction)customTintColorSwitchValueChanged:(id)sender {
    [[NSUserDefaults standardUserDefaults] setBool:self.customTintColorSwitch.isOn forKey:@"customTintColor"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (IBAction)customTextColorSwitchValueChanged:(id)sender {
    [[NSUserDefaults standardUserDefaults] setBool:self.customTextColorSwitch.isOn forKey:@"customTextColor"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (IBAction)lineWidthStepperValueChanged:(id)sender {
    self.lineWidthLabel.text = [NSString stringWithFormat:@"%@", @(self.lineWidthStepper.value)];
    
    [[NSUserDefaults standardUserDefaults] setDouble:self.lineWidthStepper.value forKey:@"lineWidth"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (IBAction)radiusStepperValueChanged:(id)sender {
    self.radiusLabel.text = [NSString stringWithFormat:@"%@", @(self.radiusStepper.value)];
    
    [[NSUserDefaults standardUserDefaults] setDouble:self.radiusStepper.value forKey:@"radius"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (IBAction)textFontSizeStepperValueChanged:(id)sender {
    self.textFontSizeLabel.text = [NSString stringWithFormat:@"%@", @(self.textFontSizeStepper.value)];
    
    [[NSUserDefaults standardUserDefaults] setDouble:self.textFontSizeStepper.value forKey:@"textFontSize"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
