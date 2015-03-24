//
//  FontViewController.m
//  AL_Standard
//
//  Created by 申超 on 15/3/3.
//  Copyright (c) 2015年 申超. All rights reserved.
//

#import "FontViewController.h"

@interface FontViewController ()

@property (nonatomic,strong) UILabel            * fontLabel;

@end

@implementation FontViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _fontLabel = [[UILabel alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _fontLabel.text = @"国";
    _fontLabel.font = [UIFont systemFontOfSize:256];
    
    [self.view addSubview:_fontLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
