//
//  QBAssetsCollectionFooterView.m
//  QBImagePickerController
//
//  Created by Tanaka Katsuma on 2013/12/31.
//  Copyright (c) 2013年 Katsuma Tanaka. All rights reserved.
//

#import "QBAssetsCollectionFooterView.h"

@interface QBAssetsCollectionFooterView ()

@property (nonatomic, strong, readwrite) UILabel *textLabel;

@end

@implementation QBAssetsCollectionFooterView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        // Create a label
        UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        textLabel.font = [UIFont fontWithName:@"BrandonText-Bold" size:14.0f];
        textLabel.textColor = [UIColor whiteColor];
        textLabel.backgroundColor = [UIColor clearColor];
        textLabel.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:textLabel];
        self.textLabel = textLabel;
    }
    
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // Layout text label
    self.textLabel.frame = CGRectMake(0,
                                      (self.bounds.size.height - 21.0) / 2.0,
                                      self.bounds.size.width,
                                      21.0);
}

@end
