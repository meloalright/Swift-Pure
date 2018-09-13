//
//  ViewController.m
//  09-Slider
//
//  Created by meloair on 2018/9/10.
//  Copyright © 2018年 com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong) UISlider *sld;
@end

@implementation ViewController

- (UISlider *) sld {
    if (!_sld) {
        _sld = [[UISlider alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 200, 200, 23)];
        _sld.minimumValue = 10.0;
        _sld.maximumValue = 99.0;
        _sld.continuous = NO;
    }
    return _sld;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.sld];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
