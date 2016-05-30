//
//  ResturantCardViewOverlay.m
//  Munch
//
//  Created by Zach Smoroden on 2016-05-30.
//  Copyright © 2016 Enoch Ng. All rights reserved.
//

#import "ResturantCardViewOverlay.h"

@interface ResturantCardViewOverlay ()

@property (nonatomic) UIImageView *imageView;

@end

@implementation ResturantCardViewOverlay

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if(self) {
        self.backgroundColor = [UIColor whiteColor];
        
        self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"x"]];
        [self addSubview:self.imageView];
    }
    
    return self;
}

-(void)updateMode:(ResturauntCardViewOverlayMode)mode {
    if(self.mode == mode) {
        return;
    }
    
    self.mode = mode;
    
    if(mode == ResturauntCardViewOverlayModeLeft) {
        self.imageView.image = [UIImage imageNamed:@"x"];
    } else {
        self.imageView.image = [UIImage imageNamed:@"check"];
    }
}

-(void)layoutSubviews {
    [super layoutSubviews];
    
    self.imageView.frame = CGRectMake(50, 50, 100, 100);
    self.imageView.center = CGPointMake(self.bounds.size.height/2, self.bounds.size.width/2);
}

@end
