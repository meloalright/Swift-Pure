//
//  ViewController.m
//  08-Switch
//
//  Created by meloair on 2018/9/10.
//  Copyright © 2018年 com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong) UISwitch *sw;
@end

@implementation ViewController

- (UISwitch *) sw {
    if (!_sw) {
        _sw = [[UISwitch alloc] init];
        _sw.center = CGPointMake(40, 40);
    }
    return _sw;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.sw];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
