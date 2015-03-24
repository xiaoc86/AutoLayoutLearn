//
//  SideViewController.m
//  AL_Standard
//
//  Created by 申超 on 15/3/3.
//  Copyright (c) 2015年 申超. All rights reserved.
//

#import "SideViewController.h"

@interface SideViewController ()

@property (nonatomic,strong) UIView         * subView;

@end

@implementation SideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _subView = [[UIView alloc] initWithFrame:CGRectMake(200, 200, 100, 100)];
    _subView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_subView];
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
