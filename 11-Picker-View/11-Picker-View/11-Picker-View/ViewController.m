//
//  ViewController.m
//  11-Picker-View
//
//  Created by meloair on 2019/7/10.
//  Copyright © 2019年 com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDataSource,UIPickerViewDelegate>
@property (nonatomic,strong) UIPickerView * pickerView;
@property (nonatomic,strong) NSArray * provinces;
@property (nonatomic,strong) NSArray * citiesDimensions;
@property (nonatomic,strong) NSArray * cities;
@property (nonatomic,strong) UILabel * label;
@end

@implementation ViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    [self loadData];
    
    self.pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 50, self.view.bounds.size.width, 200)];
    [self.view addSubview:self.pickerView];
    
    self.label = [[UILabel alloc]initWithFrame: CGRectMake(0, 450, self.view.bounds.size.width, 100)];
    self.label.translatesAutoresizingMaskIntoConstraints = NO;

    self.label.textColor = [UIColor blackColor];
    self.label.font = [UIFont systemFontOfSize: 16];

    [self.label setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview: self.label];
    [self updateLabelText];
    
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
}

// init the data
- (void) loadData
{
    self.provinces = @[@"GuangDong", @"JiangSu", @"ZheJiang", @"TaiWan"];
    self.citiesDimensions = @[@[@"GuangZhou", @"ShenZhen"],
                    @[@"NanJing", @"SuZhou"],
                    @[@"HangZhou"],
                    @[@"TaiBei", @"XinBei", @"GaoXiong"]];
    self.cities = self.citiesDimensions[0];
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    NSInteger result = 0;
    switch (component) {
        case 0:
            result = self.provinces.count;
            break;
        case 1:
            result = self.cities.count;
            break;
            
        default:
            break;
    }
    
    return result;
}

- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString * title = nil;
    switch (component) {
        case 0:
            title = self.provinces[row];
            break;
        case 1:
            title = self.cities[row];
            break;
        default:
            break;
    }
    
    return title;
}

// trigger when select
- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    switch (component) {
        case 0:
            self.cities = self.citiesDimensions[row];
            [self.pickerView reloadComponent:1];
            [self updateLabelText];
            break;
        case 1:
            [self updateLabelText];
            break;
            
        default:
            break;
    }
}

// update the label text
- (void) updateLabelText
{
    self.label.text = [NSString stringWithFormat:@"%@ %@",self.provinces[[self.pickerView selectedRowInComponent:0]], self.cities[[self.pickerView selectedRowInComponent:1]]];
}

@end
