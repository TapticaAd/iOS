//
//  VideoViewController.m
//  tapticaSampleApplication
//
//  Created by Noa and Asaf on 3/19/13.
//  Copyright (c) 2013 BroadXaster. All rights reserved.
//

#import "VideoViewController.h"

@interface VideoViewController ()

@end

@implementation VideoViewController
@synthesize tapticaAdView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    tapticaAdView = [[TapticaAdView alloc] init];
    [tapticaAdView setAdRootViewController:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnRefrashAdClick:(id)sender {
    
    [tapticaAdView requestVideoAd];

    
}
@end
