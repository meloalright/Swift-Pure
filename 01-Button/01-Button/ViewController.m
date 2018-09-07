//
//  ViewController.m
//  01-Button
//
//  Created by meloair on 2018/9/7.
//  Copyright © 2018年 com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
    // A rounded Rect button created by using class method
    UIButton *roundRectButton = [UIButton buttonWithType:
                                 UIButtonTypeRoundedRect];
    // @@ 实现居中
    // @@ 使用 (self.view.frame.size.width - 200)/2.0 设定左边距 即可居中
    [roundRectButton setFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 60, 200, 40)];
    // sets title for the button
    [roundRectButton setTitle:@"Rounded Rect Button" forState:
     UIControlStateNormal];
    [self.view addSubview:roundRectButton];
    
    UIButton *customButton = [UIButton buttonWithType: UIButtonTypeCustom];
    [customButton setBackgroundColor: [UIColor lightGrayColor]];
    [customButton setTitleColor:[UIColor blackColor] forState:
     UIControlStateHighlighted];
    //sets background image for normal state
    [customButton setBackgroundImage:[UIImage imageNamed:
                                      @"Button_Default.png"]
                            forState:UIControlStateNormal];
    //sets background image for highlighted state
    [customButton setBackgroundImage:[UIImage imageNamed:
                                      @"Button_Highlighted.png"]
                            forState:UIControlStateHighlighted];
    [customButton setFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 100, 200, 40)];
    [customButton setTitle:@"Custom Button" forState:UIControlStateNormal];
    [self.view addSubview:customButton];
    
    UIButton *detailDisclosureButton = [UIButton buttonWithType:
                                        UIButtonTypeDetailDisclosure];
    [detailDisclosureButton setFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 150, 200, 40)];
    [detailDisclosureButton setTitle:@"Detail disclosure" forState:
     UIControlStateNormal];
    [self.view addSubview:detailDisclosureButton];
    
    UIButton *contactButton = [UIButton buttonWithType:
                               UIButtonTypeContactAdd];
    [contactButton setFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 200, 200, 40)];
    [self.view addSubview:contactButton];
    
    UIButton *infoDarkButton = [UIButton buttonWithType:
                                UIButtonTypeInfoDark];
    [infoDarkButton setFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 250, 200, 40)];
    [self.view addSubview:infoDarkButton];
    
    UIButton *infoLightButton = [UIButton buttonWithType:
                                 UIButtonTypeInfoLight];
    [infoLightButton setFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 300, 200, 40)];
    [self.view addSubview:infoLightButton];
}
@end
