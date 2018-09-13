//
//  ViewController.m
//  07-Image-View
//
//  Created by meloair on 2018/9/10.
//  Copyright © 2018年 com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong) UIImageView *imgview0;
@property(nonatomic, strong) UIImageView *imgview1;
@end

@implementation ViewController

- (UIImageView *)imgview0 {
    if (!_imgview0) {
        _imgview0 = [[UIImageView alloc]
                                initWithFrame:CGRectMake((self.view.frame.size.width - 100)/2.0, 50, 100, 100)];
        [_imgview0 setImage:[UIImage imageNamed:@"A0.jpg"]];
        [_imgview0 setContentMode:UIViewContentModeScaleAspectFit];
    }
    return _imgview0;
}

- (UIImageView *)imgview1 {
    if (!_imgview1) {
        _imgview1 = [[UIImageView alloc]
                                initWithFrame:CGRectMake((self.view.frame.size.width - 100)/2.0, 400, 100, 100)];
        // set an animation
        _imgview1.animationImages = [NSArray arrayWithObjects:
                                   [UIImage imageNamed:@"A0.jpg"],
                                   [UIImage imageNamed:@"A1.jpg"], nil];
        _imgview1.animationDuration = 4.0;
        _imgview1.contentMode = UIViewContentModeCenter;
        [_imgview1 startAnimating];
    }
    return _imgview1;
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.imgview0];
    [self.view addSubview:self.imgview1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
