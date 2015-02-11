//
//  ALViewControllerWithFormat.m
//  AL_WithCode
//
//  Created by 申超 on 15/2/10.
//  Copyright (c) 2015年 申超. All rights reserved.
//

#import "ALViewControllerWithFormat.h"

@interface ALViewControllerWithFormat ()

@property (nonatomic,strong) UIView         * redView;
@property (nonatomic,strong) UIView         * greenView;
@property (nonatomic,strong) UIView         * blueView;

@end

@implementation ALViewControllerWithFormat

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
    
    NSDictionary *dict1 = NSDictionaryOfVariableBindings(_redView,_greenView,_blueView);
    NSDictionary *metrics = @{@"hPadding":@30,@"vPadding":@30,@"sidePadding":@30};
    
    NSString * vf0 = @"|-sidePadding-[_redView(_greenView)]-hPadding-[_greenView]-sidePadding-|";
    NSString * vf1 = @"|-sidePadding-[_blueView]-sidePadding-|";
    //NSString * vf2 = @"|-[_redView(_greenView)]-[_greenView]-|";
    //NSString * vf3 = @"V:|-[_redView(_greenView)]-[_greenView]-|";
    //NSString * vf4 = @"V:|-[_blueView(_redView)]-[_redView]-|";
    NSString * vf5 = @"V:|-sidePadding-[_redView(_blueView)]-vPadding-[_blueView]-sidePadding-|";
    NSString * vf6 = @"V:|-sidePadding-[_greenView(_blueView)]-vPadding-[_blueView]-sidePadding-|";
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vf0 options:0 metrics:metrics views:dict1]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vf1 options:0 metrics:metrics views:dict1]];
    //[self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vf2 options:0 metrics:metrics views:dict1]];
    //[self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vf3 options:0 metrics:metrics views:dict1]];
    //[self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vf4 options:0 metrics:metrics views:dict1]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vf5 options:0 metrics:metrics views:dict1]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vf6 options:0 metrics:metrics views:dict1]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
