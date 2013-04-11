//
//  SecondViewController.m
//  tapticaSampleApplication
//
//  Created by Noa and Asaf on 12/26/12.
//  Copyright (c) 2012 BroadXaster. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize tapticaAdView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    tapticaAdView = [[TapticaAdView alloc] init];
    [tapticaAdView setAdRootViewController:self];
}

- (void)viewDidAppear:(BOOL)animated{
//    [tapticaAdView requestFullScreenAd];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnRefrashAdClick:(id)sender {
    [tapticaAdView requestFullScreenAd];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    NSLog(@"shouldAutorotateToInterfaceOrientation");
    return UIInterfaceOrientationIsLandscape(toInterfaceOrientation);
}


@end
