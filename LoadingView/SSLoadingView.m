//
//  LoadingView.m
//  Created by Stephanie Sharp on 26/05/13.
//

#import "SSLoadingView.h"
#import <QuartzCore/QuartzCore.h>

@implementation SSLoadingView

#pragma mark - Class methods

+(SSLoadingView *)loadingViewInView:(UIView *)superView
{
    // Create a new view with the same frame size as the superView
    SSLoadingView * loadingView = [[SSLoadingView alloc] initWithFrame:superView.bounds];
    
    if(!loadingView)
        return nil;
    
    loadingView.opaque = NO;
    
    // Create background view and add as subview
    UIView * background = [[UIView alloc] initWithFrame:loadingView.frame];
    loadingView.backgroundColor = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.7f];
    [loadingView addSubview:background];
    
    // Add activity indicator
    UIActivityIndicatorView * indicator = [[UIActivityIndicatorView alloc]
                                           initWithActivityIndicatorStyle: UIActivityIndicatorViewStyleWhiteLarge];
    
    // Set the resizing mask so it's not stretched
    indicator.autoresizingMask = UIViewAutoresizingFlexibleTopMargin |
                                 UIViewAutoresizingFlexibleRightMargin |
                                 UIViewAutoresizingFlexibleBottomMargin |
                                 UIViewAutoresizingFlexibleLeftMargin;
    
    loadingView.translatesAutoresizingMaskIntoConstraints = YES;
    
    // Place it in the middle of the view
    indicator.center = loadingView.center;
    
    // Add it into the loadingView
    [loadingView addSubview:indicator];
    
    // Start it animating
    [indicator startAnimating];
    
    // Add the loading view to the superView.
    [superView addSubview:loadingView];
    
    // Create a new fade animation & add to superview
    CATransition * animation = [CATransition animation];
    [animation setType:kCATransitionFade];
    [[superView layer] addAnimation:animation forKey:@"layerAnimation"];
    
    return loadingView;
}

#pragma mark

-(void)removeView
{
    CATransition * animation = [CATransition animation];
    [animation setType:kCATransitionFade];
    [[[self superview] layer] addAnimation:animation forKey:@"layerAnimation"];
    
    [super removeFromSuperview];
}

@end
