//
//  ViewController.m
//  AL_WithCode
//
//  Created by 申超 on 15/2/10.
//  Copyright (c) 2015年 申超. All rights reserved.
//

#import "ALViewControllerWithCode.h"

@interface ALViewControllerWithCode ()

@property (nonatomic,strong) UIView         * redView;
@property (nonatomic,strong) UIView         * greenView;
@property (nonatomic,strong) UIView         * blueView;

@end

@implementation ALViewControllerWithCode

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _redView = [[UIView alloc] init];
    _redView.backgroundColor = [UIColor redColor];
    
    _greenView = [[UIView alloc] init];
    _greenView.backgroundColor = [UIColor greenColor];
    
    _blueView = [[UIView alloc] init];
    _blueView.backgroundColor = [UIColor blueColor];
    
    [_redView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_greenView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_blueView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:_redView];
    [self.view addSubview:_greenView];
    [self.view addSubview:_blueView];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_redView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0f constant:30.0f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_redView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0f constant:30.0f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_greenView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0f constant:-30.0f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_greenView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0f constant:30.0f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_redView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:_greenView attribute:NSLayoutAttributeWidth multiplier:1.0f constant:0.0f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_redView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:_greenView attribute:NSLayoutAttributeHeight multiplier:1.0f constant:0.0f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_redView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:_greenView attribute:NSLayoutAttributeLeft multiplier:1.0f constant:-30.0f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_blueView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0f constant:30.0f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_blueView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0f constant:-30.0f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_blueView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0f constant:-30.0f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_blueView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:_redView attribute:NSLayoutAttributeHeight multiplier:1.0f constant:0.0f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_blueView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_redView attribute:NSLayoutAttributeBottom multiplier:1.0f constant:30.0f]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
