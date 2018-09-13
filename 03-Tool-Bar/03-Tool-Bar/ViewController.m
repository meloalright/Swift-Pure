//
//  ViewController.m
//  03-Tool-Bar
//
//  Created by meloair on 2018/9/10.
//  Copyright © 2018年 com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic)  UILabel *label;
@property (strong, nonatomic)  UIToolbar *toolBar;

@end

@implementation ViewController

- (UILabel *) label {
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.textColor = [UIColor blackColor];
        _label.font = [UIFont systemFontOfSize:20];
        _label.text = @"Touch The ToolBar";
        _label.textAlignment = UITextAlignmentCenter;
        _label.frame = CGRectMake((self.view.frame.size.width - 200)/2.0, (self.view.frame.size.height - 50)/2.0, 200, 50);
    }
    return _label;
}

- (UIToolbar *) toolBar {
    if (!_toolBar) {
        UIBarButtonItem *spaceItem = [[UIBarButtonItem alloc]
                                      initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                      target:nil action:nil];
        UIBarButtonItem *customItem1 = [[UIBarButtonItem alloc]
                                        initWithTitle:@"Tool1" style:UIBarButtonItemStyleBordered
                                        target:self action:@selector(toolBarItem1:)];
        UIBarButtonItem *customItem2 = [[UIBarButtonItem alloc]
                                        initWithTitle:@"Tool2" style:UIBarButtonItemStyleDone
                                        target:self action:@selector(toolBarItem2:)];
        NSArray *toolbarItems = [NSArray arrayWithObjects:
                                 customItem1,spaceItem, customItem2, nil];
        _toolBar = [[UIToolbar alloc]initWithFrame:
                              CGRectMake(0, self.view.frame.size.height - 50, self.view.frame.size.width, 50)];
        [_toolBar setBarStyle:UIBarStyleBlackOpaque];
        
        [_toolBar setItems:toolbarItems];
    }
    return _toolBar;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Exceute The Method Here
    
    // Add Label
    [self.view addSubview:self.label];
    //self.label.frame = CGRectMake(100, 100, 200, 50);
    
    // Add ToolBar
    [self.view addSubview:self.toolBar];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)toolBarItem1:(id)sender{
    [self.label setText:@"Tool 1 Selected"];
}

-(IBAction)toolBarItem2:(id)sender{
    [self.label setText:@"Tool 2 Selected"];
}
@end
