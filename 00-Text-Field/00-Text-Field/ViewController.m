//
//  ViewController.m
//  00-Text-Field
//
//  Created by meloMacPro on 2018/9/12.
//  Copyright © 2018年 meloMacPro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong) UILabel *prefixLabel;
@property(nonatomic, strong) UITextField *textField;
@end

@implementation ViewController

- (UILabel *)prefixLabel {
    if (!_prefixLabel) {
        _prefixLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        //This sets the label text
        _prefixLabel.text =@" ## ";
        // This sets the font for the label
        [_prefixLabel setFont:[UIFont boldSystemFontOfSize:14]];
        // This fits the frame to size of the text
        [_prefixLabel sizeToFit];
    }
    return _prefixLabel;
}

- (UITextField *)textField {
    if (!_textField) {
        _textField = [[UITextField  alloc] initWithFrame:
                      CGRectMake((self.view.frame.size.width-80)/2.0, (self.view.frame.size.height-30)/2.0, 80, 30)];
        
        // This sets the border style of the text field
        _textField.borderStyle = UITextBorderStyleRoundedRect;
        _textField.contentVerticalAlignment =
        UIControlContentVerticalAlignmentCenter;
        [_textField setFont:[UIFont boldSystemFontOfSize:12]];
        
        //Placeholder text is displayed when no text is typed
        _textField.placeholder = @"Simple Text Field";
    }
    return _textField;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.textField];
    [self.view addSubview:self.prefixLabel];
    self.textField.leftView = self.prefixLabel;
    
    //It set when the left prefixLabel to be displayed
    self.textField.leftViewMode = UITextFieldViewModeAlways;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
