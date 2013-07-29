//
//  SSViewController.h
//  LoadingViewDemo
//
//  Created by Stephanie Sharp on 29/07/13.
//  Copyright (c) 2013 Stephanie Sharp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIView * loadingViewContainer;

- (IBAction)toggleLoadingView:(UISegmentedControl *)sender;

@end
