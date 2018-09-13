//
//  ViewController.m
//  10-Alert
//
//  Created by meloair on 2018/9/10.
//  Copyright © 2018年 com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong) UIAlertView *alertView;
@end

@implementation ViewController

- (UIAlertView *) alertView {
    if (!_alertView) {
        _alertView = [[UIAlertView alloc]initWithTitle:
                      @"Title" message:@"This is a test alert" delegate:self
                                     cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
    }
    return _alertView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.alertView show];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Alert view delegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:
(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            NSLog(@"Cancel button clicked");
            break;
        case 1:
            NSLog(@"OK button clicked");
            break;
            
        default:
            break;
    }
}
@end
