//
//  ViewController.m
//  09-Slider
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
    [self addSlider];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addSlider{
    UISlider *mySlider = [[UISlider alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 200, 200, 23)];
    [self.view addSubview:mySlider];
    mySlider.minimumValue = 10.0;
    mySlider.maximumValue = 99.0;
    mySlider.continuous = NO;
}

@end
