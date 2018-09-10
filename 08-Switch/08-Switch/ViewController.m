//
//  ViewController.m
//  08-Switch
//
//  Created by meloair on 2018/9/10.
//  Copyright © 2018年 com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addSwitch];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addSwitch{
    UISwitch *mySwitch = [[UISwitch alloc] init];
    [self.view addSubview:mySwitch];
    mySwitch.center = CGPointMake(40, 40);
}

@end
