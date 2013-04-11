//
//  TapticaAd.h
//  IOSAdyxSDK
//
//  Created by Moti Ferentz on 4/3/11.
//  Copyright 2011 Volas Entertainment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface TapticaAdManager : NSObject {
    
    
}

+ (TapticaAdManager *)instance;



/**
 Use the application ID generated in the taptica dev center:
 */
- (BOOL)setTapticaAdApplicationID:(NSString*)appID;

- (void) firePixel;

- (BOOL)setShowDebugLogs:(BOOL)_showLogs;







/*
 Insert income:
*/
- (BOOL)setTapticaAdUserIncome:(int)income;

/*
 set keywords to get focus advertising for target audience.
 For example, with an application for toddlers, you might consider using “kids children toys” as keywords.
 */ 
- (BOOL)setTapticaAdUserKeywords:(NSString *)keywords;

/*
 Insert Postal code:
*/ 
- (BOOL)setTapticaAdUserPostalCode:(int)postalCode;

/*
 Insert dailing area code:
*/ 
- (BOOL)setTapticaAdUserAreaCode:(int)areaCode;

/*
 Insert a birthday as follow : yyyymmdd
*/ 
- (BOOL)setTapticaAdUserBirthdate:(NSString *)date;

/*
 use parameter as follow:
 0 == unknown , 1 == single , 2 == divorced , 3 == engaged , 4 == relationship , 5 == swinger
 */
- (BOOL)setTapticaAdUserMaritalStatus:(int)status;

/*
 use parameter as follow:
 0 == unknown , 1 == male , 2 == female
 */
- (BOOL)setTapticaAdUserGender:(int)gender;

/*
 use parameter as follow:
 0 == unknown , 1 == UG , 2 == PG
 */
- (BOOL)setTapticaAdUserEducation:(int)education;


/*
 use parameter to insert targeted audience interests: 
*/ 
- (BOOL)setTapticaAdUserInterests:(NSString *)interests;

/*
 use parameter to insert targeted audience ethnicity: 
 */ 
- (BOOL)setTapticaAdUserEthnicity:(NSString *)ethnicity;

/*
 use parameter to insert location:	
*/ 
- (BOOL)setTapticaAdGeoLocation:(double)latitude longitude:(double)longitude;


/*
 test mode retrieve fictive ads and use only for debugging purpose and not in production	
*/ 
- (BOOL)setTapticaAdTestMode:(BOOL)testMode;


@end




@class TapticaAdViewPriv;
@interface TapticaAdView : NSObject {
    TapticaAdViewPriv *adView;

}


- (void) setAdBannerY:(int)_y;
- (void) requestAd;
- (void) requestFullScreenAd;
- (void)requestVideoAd;
- (void) requestOfferWallAd;
- (void)requestFloatingBannerAd;
- (void) setAdRootViewController:(UIViewController*)rootViewController;
- (UIView *)view;

@end
