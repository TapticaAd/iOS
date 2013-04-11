//
//  FirstViewController.m
//  tapticaSampleApplication
//
//  Created by Noa and Asaf on 12/26/12.
//  Copyright (c) 2012 BroadXaster. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize tapticaAdView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    tapticaAdView = [[TapticaAdView alloc] init];
    
    
    [self.view addSubview:[tapticaAdView view]];
    [tapticaAdView setAdRootViewController:self];
    [tapticaAdView requestAd];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnRefrashAdClick:(id)sender {
    
    [tapticaAdView requestAd];
    
}
@end
