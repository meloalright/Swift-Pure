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

@property(nonatomic, strong) UILabel *aLabel;
@end

@implementation ViewController

- (UISlider *) sld {
    if (!_sld) {
        _sld = [[UISlider alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 200, 200, 23)];
        _sld.minimumValue = 10.0;
        _sld.maximumValue = 99.0;
        _sld.continuous = NO;
        [_sld addTarget:self action:@selector(onSlideHandler:) forControlEvents:UIControlEventValueChanged];
    }
    return _sld;
}


- (UILabel *)aLabel {
    if (!_aLabel) {
        _aLabel = [[UILabel alloc]initWithFrame:
                   CGRectMake((self.view.frame.size.width - 300)/2.0, (self.view.frame.size.height - 100)/2.0, 300, 100)];
        _aLabel.numberOfLines = 0;
        _aLabel.textAlignment = UITextAlignmentCenter;
        _aLabel.text = @"Slide It";
    }
    return _aLabel;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.sld];
    [self.view addSubview:self.aLabel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)onSlideHandler:(id)sender{
    self.aLabel.text = [NSString stringWithFormat:@"Slider Value %f",self.sld.value];;
}


@end
