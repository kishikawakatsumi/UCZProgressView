//
//  UCZProgressViewTests.m
//  UCZProgressViewTests
//
//  Created by kishikawa katsumi on 2014/12/14.
//  Copyright (c) 2014 kishikawa katsumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>
#import "UCZProgressView.h"

@interface UCZProgressViewTests : FBSnapshotTestCase

@end

@implementation UCZProgressViewTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

//- (void)testIndeterminate {
//    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
//    progressView.indeterminate = YES;
//    
//    FBSnapshotVerifyView(progressView, nil);
//}

- (void)testProgress01 {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.01;
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testProgress02 {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.02;
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testProgress05 {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.05;
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testProgress10 {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.1;
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testProgress20 {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.2;
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testProgress30 {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.3;
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testProgress50 {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.5;
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testProgress70 {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.7;
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testProgress90 {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.9;
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testProgress100 {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 1.0;
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testShowsText {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.7;
    progressView.showsText = YES;
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testLineWidth {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.7;
    progressView.lineWidth = 6.0;
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testRadius {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.7;
    progressView.radius = 40.0;
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testTintColor {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.7;
    progressView.tintColor = [UIColor blueColor];
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testTextLabel {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.7;
    progressView.showsText = YES;
    progressView.textLabel.font = [UIFont fontWithName:@"Copperplate-Bold" size:18.0];
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testTextColor {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.7;
    progressView.showsText = YES;
    progressView.textColor = [UIColor redColor];
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testTextSize {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.7;
    progressView.showsText = YES;
    progressView.textSize = 18.0;
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testBlurEffectStyleExtraLight {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.7;
    progressView.blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testBlurEffectStyleLight {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.7;
    progressView.blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testBlurEffectStyleDark {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.7;
    progressView.blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testCustomStyle1 {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.7;
    progressView.showsText = YES;
    progressView.textSize = 20.0;
    progressView.lineWidth = 6.0;
    progressView.radius = 40.0;
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testCustomStyle2 {
    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.progress = 0.7;
    progressView.showsText = YES;
    progressView.textSize = 20.0;
    progressView.lineWidth = 6.0;
    progressView.radius = 40.0;
    progressView.tintColor = [UIColor blueColor];
    progressView.textColor = [UIColor redColor];
    
    FBSnapshotVerifyView(progressView, nil);
}

- (void)testAnimationDidStopBlock {
    XCTestExpectation *expectation = [self expectationWithDescription:@"AnimationDidStart"];

    UCZProgressView *progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 568.0)];
    progressView.animationDidStopBlock = ^{
        [expectation fulfill];
    };

    progressView.progress = 1.0;

    [self waitForExpectationsWithTimeout:2.0 handler:nil];
}

@end
