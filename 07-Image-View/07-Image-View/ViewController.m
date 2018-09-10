//
//  ViewController.m
//  07-Image-View
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
    //[self addImageView];
    [self addImageViewWithAnimation];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addImageView{
    UIImageView *imgview = [[UIImageView alloc]
                            initWithFrame:CGRectMake((self.view.frame.size.width - 100)/2.0, (self.view.frame.size.height - 100)/2.0, 100, 100)];
    [imgview setImage:[UIImage imageNamed:@"A0.jpg"]];
    [imgview setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:imgview];
}

-(void)addImageViewWithAnimation{
    UIImageView *imgview = [[UIImageView alloc]
                            initWithFrame:CGRectMake((self.view.frame.size.width - 100)/2.0, (self.view.frame.size.height - 100)/2.0, 100, 100)];
    // set an animation
    imgview.animationImages = [NSArray arrayWithObjects:
                               [UIImage imageNamed:@"A0.jpg"],
                               [UIImage imageNamed:@"A1.jpg"], nil];
    imgview.animationDuration = 4.0;
    imgview.contentMode = UIViewContentModeCenter;
    [imgview startAnimating];
    [self.view addSubview:imgview];
}

@end
