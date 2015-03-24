//
//  ViewController.m
//  AL_WithMasonry
//
//  Created by 申超 on 15/2/10.
//  Copyright (c) 2015年 申超. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@property (nonatomic,strong) UIView         * redView;
@property (nonatomic,strong) UIView         * greenView;
@property (nonatomic,strong) UIView         * blueView;

@end

@implementation ViewController

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
    
//    [_redView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
//    }];
    
    [_redView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(50, 10, 10, 10));
    }];
//    [_redView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(@30);
//        make.top.mas_equalTo(@30);
//        make.height.mas_equalTo(_greenView.mas_height);
//        make.width.mas_equalTo(_greenView.mas_width);
//        make.right.mas_equalTo(_greenView.mas_left).with.offset(-30);
//        make.bottom.mas_equalTo(_blueView.mas_top).with.offset(-30);
//    }];
//    
//    [_greenView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.right.mas_equalTo(@-30);
//        make.top.mas_equalTo(@30);
//    }];
//    
//    [_blueView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(@30);
//        make.right.mas_equalTo(@-30);
//        make.bottom.mas_equalTo(@-30);
//        make.height.mas_equalTo(_redView.mas_height);
//    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
