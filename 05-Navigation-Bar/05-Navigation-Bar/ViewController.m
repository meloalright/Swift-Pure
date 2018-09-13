//
//  ViewController.m
//  05-Navigation-Bar
//
//  Created by meloair on 2018/9/11.
//  Copyright © 2018年 com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong) UIButton *button;
@end

@implementation ViewController

- (UIButton *) button {
    if (!_button) {
        _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_button setFrame:CGRectMake((self.view.frame.size.width - 200)/2.0, 60, 200, 40)];
        // sets title for the button
        [_button setTitle:@"Navigate To Next View" forState:
         UIControlStateNormal];
        [_button addTarget:self action:@selector(onTouchHandler:)
          forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

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

- (void)addButton {;
    [self.view addSubview:self.button];
}


-(IBAction)onTouchHandler:(id)sender{
    ViewController *vc = [[ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
