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
@property(nonatomic, strong) UILabel *aLabel;
@end

@implementation ViewController

- (UISwitch *) sw {
    if (!_sw) {
        _sw = [[UISwitch alloc] init];
        _sw.center = CGPointMake(self.view.frame.size.width/2.0, 100);
        [_sw addTarget:self action:@selector(switched:) forControlEvents:UIControlEventValueChanged];
    }
    return _sw;
}

- (UILabel *)aLabel {
    if (!_aLabel) {
        _aLabel = [[UILabel alloc]initWithFrame:
                   CGRectMake((self.view.frame.size.width - 300)/2.0, (self.view.frame.size.height - 100)/2.0, 300, 100)];
        _aLabel.numberOfLines = 0;
        _aLabel.textAlignment = UITextAlignmentCenter;
        _aLabel.text = @"Switch It";
    }
    return _aLabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.sw];
    [self.view addSubview:self.aLabel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
         
-(IBAction)switched:(id)sender{
    self.aLabel.text = self.sw.on ? @"On" : @"Off";
}
         
@end
