//
//  ViewController.m
//  UCZProgressView
//
//  Created by kishikawa katsumi on 2014/12/14.
//  Copyright (c) 2014 kishikawa katsumi. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "ThumbnailCell.h"

@interface ViewController () <UICollectionViewDelegateFlowLayout>

@property (nonatomic) NSArray *photoObjects;
@property (nonatomic) NSOperationQueue *downloadQueue;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.downloadQueue = [[NSOperationQueue alloc] init];
    self.downloadQueue.maxConcurrentOperationCount = 2;
    
    self.photoObjects = @[@{@"thumbnail_url": @"https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Example/Images/Thumbnails/9O7A2669.png", @"original_url": @"https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Example/Images/9O7A2669.png"},
                          @{@"thumbnail_url": @"https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Example/Images/Thumbnails/9O7A2713.png", @"original_url": @"https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Example/Images/9O7A2713.png"},
                          @{@"thumbnail_url": @"https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Example/Images/Thumbnails/9O7A2738.png", @"original_url": @"https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Example/Images/9O7A2738.png"},
                          @{@"thumbnail_url": @"https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Example/Images/Thumbnails/9O7A2844.png", @"original_url": @"https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Example/Images/9O7A2844.png"},
                          @{@"thumbnail_url": @"https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Example/Images/Thumbnails/9O7A2846.png", @"original_url": @"https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Example/Images/9O7A2846.png"}];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Detail"]) {
        ThumbnailCell *cell = sender;
        NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
        
        UINavigationController *navigationController = segue.destinationViewController;
        DetailViewController *viewController = (DetailViewController *)navigationController.topViewController;
        
        viewController.thumbnail = cell.imageView.image;
        
        NSDictionary *photoObject = self.photoObjects[indexPath.item];
        viewController.fullResolutionImageURL = [NSURL URLWithString:photoObject[@"original_url"]];
    }
}

#pragma mark -

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.photoObjects.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ThumbnailCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSDictionary *photoObject = self.photoObjects[indexPath.item];
    
    NSURL *thumbnailURL = [NSURL URLWithString:photoObject[@"thumbnail_url"]];
    [NSURLConnection sendAsynchronousRequest:[NSURLRequest requestWithURL:thumbnailURL] queue:self.downloadQueue completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        if (!connectionError && data) {
            dispatch_async(dispatch_get_main_queue(), ^{
                cell.imageView.image = [UIImage imageWithData:data];
            });
        }
    }];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat size = (CGRectGetWidth(self.view.bounds) - 3.0) / 4;
    return CGSizeMake(size, size);
}

@end
