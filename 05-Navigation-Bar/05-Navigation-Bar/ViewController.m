//
//  ViewController.m
//  05-Navigation-Bar
//
//  Created by meloair on 2018/9/11.
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
    [self addButton];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addButton {
    UIButton *roundRectButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [roundRectButton setFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 60, 200, 40)];
    // sets title for the button
    [roundRectButton setTitle:@"Navigate To Next View" forState:
     UIControlStateNormal];
    [roundRectButton addTarget:self action:@selector(onTouchHandler:)
     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:roundRectButton];
}


-(IBAction)onTouchHandler:(id)sender{
    ViewController *vc = [[ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
