//
//  QBAlbumCell.m
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/03.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import "QBConstants.h"
#import "QBAlbumCell.h"

@implementation QBAlbumCell

- (void)awakeFromNib {
	[super awakeFromNib];

	if (@available(iOS 13.0, *)) {

		// Use opposite color for text
		if ([UITraitCollection currentTraitCollection].userInterfaceStyle == UIUserInterfaceStyleDark) {
			[self.titleLabel setBackgroundColor: kDarkBackground];
			[self.countLabel setBackgroundColor: kDarkBackground];
		} else  {
			[self.titleLabel setBackgroundColor: kLightBackground];
			[self.countLabel setBackgroundColor: kLightBackground];
		}
	}
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    _borderWidth = borderWidth;
    
    self.imageView1.layer.borderColor = [[UIColor whiteColor] CGColor];
    self.imageView1.layer.borderWidth = borderWidth;
    
    self.imageView2.layer.borderColor = [[UIColor whiteColor] CGColor];
    self.imageView2.layer.borderWidth = borderWidth;
    
    self.imageView3.layer.borderColor = [[UIColor whiteColor] CGColor];
    self.imageView3.layer.borderWidth = borderWidth;
}

@end
