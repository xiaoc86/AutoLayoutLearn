//
//  ViewController.m
//  AL_Standard
//
//  Created by 申超 on 15/3/3.
//  Copyright (c) 2015年 申超. All rights reserved.
//

#import "ViewController.h"
#import "FontViewController.h"
#import "SideViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@property (nonatomic,strong) UIButton           * fontButton;
@property (nonatomic,strong) UIButton           * sideButton;
@property (nonatomic,strong) UIButton           * imageButton;
@property (nonatomic,strong) UIButton           * printButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    _fontButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    _fontButton.frame = CGRectMake(0, 100, 100, 30);
    [_fontButton setTitle:@"字体对比" forState:UIControlStateNormal];
    [_fontButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [_fontButton addTarget:self action:@selector(fontVC:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_fontButton];
    
    _sideButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    _sideButton.frame = CGRectMake(0, 200, 100, 30);
    [_sideButton setTitle:@"边距对比" forState:UIControlStateNormal];
    [_sideButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [_sideButton addTarget:self action:@selector(sideVC:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_sideButton];
    
    _imageButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    _imageButton.frame = CGRectMake(0, 300, 100, 30);
    [_imageButton setTitle:@"图片" forState:UIControlStateNormal];
    [_imageButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [_imageButton addTarget:self action:@selector(imageVC:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_imageButton];
    
    _printButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    _printButton.frame = CGRectMake(0, 400, 300, 30);
    [_printButton setTitle:@"显示宽" forState:UIControlStateNormal];
    [_printButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [_printButton addTarget:self action:@selector(print:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_printButton];
    
}

- (void) fontVC:(id) sender
{
    [self.navigationController pushViewController:[[FontViewController alloc] init] animated:YES];
}

- (void) sideVC:(id) sender
{
    [self.navigationController pushViewController:[[SideViewController alloc] init] animated:YES];
}

- (void) imageVC:(id) sender
{
    [self.navigationController pushViewController:[[ImageViewController alloc] init] animated:YES];
}


- (void) print:(id) sender
{
    [_printButton setTitle:[NSString stringWithFormat:@"%f",[UIScreen mainScreen].bounds.size.width] forState:UIControlStateNormal];
}

@end
