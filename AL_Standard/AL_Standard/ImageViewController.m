//
//  ImageViewController.m
//  AL_Standard
//
//  Created by 申超 on 15/3/3.
//  Copyright (c) 2015年 申超. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@property (nonatomic,strong) UIImageView            * imageView;

@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _imageView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _imageView.image = [UIImage imageNamed:@"w320"];
    _imageView.contentMode = UIViewContentModeLeft;
    [self.view addSubview:_imageView];
    
    
    // Do any additional setup after loading the view.
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
