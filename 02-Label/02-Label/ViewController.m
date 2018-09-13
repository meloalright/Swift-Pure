//
//  ViewController.m
//  02-Label
//
//  Created by meloair on 2018/9/7.
//  Copyright © 2018年 com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong) UILabel *aLabel;
@end

@implementation ViewController

- (UILabel *)aLabel {
    if (!_aLabel) {
        _aLabel = [[UILabel alloc]initWithFrame:
                   CGRectMake((self.view.frame.size.width - 300)/2.0, (self.view.frame.size.height - 300)/2.0, 300, 300)];
        _aLabel.numberOfLines = 0;
        _aLabel.textColor = [UIColor whiteColor];
        _aLabel.backgroundColor = [UIColor blackColor];
        _aLabel.textAlignment = UITextAlignmentCenter;
        _aLabel.text = @"This is a sample text\n of multiple lines. \n here number of lines is not limited.";
    }
    return _aLabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // @@ Code Here @@
    [self addLabel];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)addLabel{
    [self.view addSubview:self.aLabel];
}

@end
