//
//  DetailViewController.m
//  UCZProgressView
//
//  Created by kishikawa katsumi on 2014/12/14.
//  Copyright (c) 2014 kishikawa katsumi. All rights reserved.
//

#import "DetailViewController.h"
#import "UCZProgressView.h"

@interface DetailViewController () <NSURLConnectionDelegate, NSURLConnectionDataDelegate>

@property (nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic) IBOutlet UCZProgressView *progressView;

@property (nonatomic) NSMutableData *data;
@property (nonatomic) double expectedBytes;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageView.image = self.thumbnail;
    
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"indeterminate"]) {
        self.progressView.indeterminate = [[NSUserDefaults standardUserDefaults] boolForKey:@"indeterminate"];
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"blurEffect"]) {
        self.progressView.blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"indicatorText"]) {
        self.progressView.showsText = YES;
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"customTintColor"]) {
        self.progressView.tintColor = [UIColor colorWithRed:0.0 green:122.0 / 255.0 blue:1.0 alpha:1.0];
        self.progressView.usesVibrancyEffect = NO; // Turn off vibrancy effect to display custom color, if uses blur effect
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"customTextColor"]) {
        self.progressView.textColor = [UIColor colorWithRed:1.0 green:0.231 blue:0.188 alpha:1.0];
        self.progressView.usesVibrancyEffect = NO; // Turn off vibrancy effect to display custom color, if uses blur effect
    }
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"lineWidth"]) {
        self.progressView.lineWidth = [[NSUserDefaults standardUserDefaults] doubleForKey:@"lineWidth"];
    }
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"radius"]) {
        self.progressView.radius = [[NSUserDefaults standardUserDefaults] doubleForKey:@"radius"];
    }
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"textFontSize"]) {
        self.progressView.textSize = [[NSUserDefaults standardUserDefaults] doubleForKey:@"textFontSize"];
    }
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapImage:)];
    [self.imageView setUserInteractionEnabled:YES];
    [self.imageView addGestureRecognizer:singleTap];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self loadImage];
}

#pragma mark -

- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark -

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    self.expectedBytes = response.expectedContentLength;
    self.data = [NSMutableData dataWithCapacity:self.expectedBytes];
    
    self.progressView.progress = 0.0;
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [self.data appendData:data];
    
    double receivedBytes = self.data.length;
    self.progressView.progress = receivedBytes / self.expectedBytes;
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    self.imageView.image = [UIImage imageWithData:self.data];
    self.progressView.progress = 1.0;
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    self.progressView.progress = 1.0;
}

#pragma mark - actions

- (void)didTapImage:(id)sender {
    NSLog(@"reloading progress view");
    [self loadImage];
}

#pragma mark - private methods

- (void)loadImage {
    [NSURLConnection connectionWithRequest:[NSURLRequest requestWithURL:self.fullResolutionImageURL] delegate:self];
}

@end
