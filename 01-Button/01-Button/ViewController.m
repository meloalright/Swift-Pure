//
//  ViewController.m
//  01-Button
//
//  Created by meloair on 2018/9/7.
//  Copyright © 2018年 com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong) UIButton *roundRectButton;
@property(nonatomic, strong) UIButton *customButton;
@property(nonatomic, strong) UIButton *detailDisclosureButton;
@property(nonatomic, strong) UIButton *contactButton;
@property(nonatomic, strong) UIButton *infoDarkButton;
@property(nonatomic, strong) UIButton *infoLightButton;
@end

@implementation ViewController

- (UIButton *)roundRectButton {
    if (!_roundRectButton) {
        _roundRectButton = [UIButton buttonWithType:
                            UIButtonTypeRoundedRect];
        // @@ 实现居中
        // @@ 使用 (self.view.frame.size.width - 200)/2.0 设定左边距 即可居中
        [_roundRectButton setFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 60, 200, 40)];
        // sets title for the button
        [_roundRectButton setTitle:@"Rounded Rect Button" forState:
         UIControlStateNormal];
    }
    return _roundRectButton;
}

- (UIButton *)customButton {
    if (!_customButton) {
        _customButton = [UIButton buttonWithType: UIButtonTypeCustom];
        [_customButton setBackgroundColor: [UIColor lightGrayColor]];
        [_customButton setTitleColor:[UIColor blackColor] forState:
         UIControlStateHighlighted];
        //sets background image for normal state
        [_customButton setBackgroundImage:[UIImage imageNamed:
                                           @"Button_Default.png"]
                                 forState:UIControlStateNormal];
        //sets background image for highlighted state
        [_customButton setBackgroundImage:[UIImage imageNamed:
                                           @"Button_Highlighted.png"]
                                 forState:UIControlStateHighlighted];
        [_customButton setFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 100, 200, 40)];
        [_customButton setTitle:@"Custom Button" forState:UIControlStateNormal];
    }
    return _customButton;
}

- (UIButton *)detailDisclosureButton {
    if (!_detailDisclosureButton) {
        _detailDisclosureButton = [UIButton buttonWithType:
                                            UIButtonTypeDetailDisclosure];
        [_detailDisclosureButton setFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 150, 200, 40)];
        [_detailDisclosureButton setTitle:@"Detail disclosure" forState:
         UIControlStateNormal];
    }
    return _detailDisclosureButton;
}

- (UIButton *)contactButton {
    if (_contactButton) {
        _contactButton = [UIButton buttonWithType:
                          UIButtonTypeContactAdd];
        [_contactButton setFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 200, 200, 40)];
    }
    return _contactButton;
}

- (UIButton *)infoDarkButton {
    if (!_infoDarkButton) {
        _infoDarkButton = [UIButton buttonWithType:
                                    UIButtonTypeInfoDark];
        [_infoDarkButton setFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 250, 200, 40)];
    }
    return _infoDarkButton;
}

- (UIButton *)infoLightButton {
    if (!_infoLightButton) {
        _infoLightButton = [UIButton buttonWithType:
                                     UIButtonTypeInfoLight];
        [_infoLightButton setFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 300, 200, 40)];
    }
    return _infoLightButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // @@ Code Here @@
    [self addDifferentTypesOfButton];
    //Do any additional setup after loading the view, typically from a nib
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)addDifferentTypesOfButton {
    [self.view addSubview:self.roundRectButton];

    [self.view addSubview:self.customButton];
    

    [self.view addSubview:self.detailDisclosureButton];
    

    [self.view addSubview:self.contactButton];
    

    [self.view addSubview:self.infoDarkButton];
    

    [self.view addSubview:self.infoLightButton];
}
@end
