//
//  SSViewController.m
//  LoadingViewDemo
//
//  Created by Stephanie Sharp on 29/07/13.
//  Copyright (c) 2013 Stephanie Sharp. All rights reserved.
//

#import "SSViewController.h"
#import "SSLoadingView.h" 

@interface SSViewController ()

@property (nonatomic, strong) SSLoadingView * loadingView;

@end

@implementation SSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    // Remove loading view
    [self.loadingView removeView];
    
    // Show loading view
    self.loadingView = [SSLoadingView loadingViewInView:self.loadingViewContainer];
}

- (void)toggleLoadingView:(UISegmentedControl *)sender
{
    if (sender.selectedSegmentIndex == 0)
    {
        // Show loading view
        self.loadingView = [SSLoadingView loadingViewInView:self.loadingViewContainer];
    }
    else
    {
        // Remove loading view
        [self.loadingView removeView];
    }
}

@end
