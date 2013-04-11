//
//  VideoViewController.h
//  tapticaSampleApplication
//
//  Created by Noa and Asaf on 3/19/13.
//  Copyright (c) 2013 BroadXaster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TapticaAd.h"

@interface VideoViewController : UIViewController
@property (nonatomic, retain) TapticaAdView *tapticaAdView;
- (IBAction)btnRefrashAdClick:(id)sender;
@end
