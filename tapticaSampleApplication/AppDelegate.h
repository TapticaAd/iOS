//
//  AppDelegate.h
//  tapticaSampleApplication
//
//  Created by Noa and Asaf on 12/26/12.
//  Copyright (c) 2012 BroadXaster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TapticaAd.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property (nonatomic, retain) TapticaAdManager *tapticaAdManager;


@end
