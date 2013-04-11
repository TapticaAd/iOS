//
//  SecondViewController.h
//  tapticaSampleApplication
//
//  Created by Noa and Asaf on 12/26/12.
//  Copyright (c) 2012 BroadXaster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TapticaAd.h"

@interface SecondViewController : UIViewController

@property (nonatomic, retain) TapticaAdView *tapticaAdView;
- (IBAction)btnRefrashAdClick:(id)sender;

@end
