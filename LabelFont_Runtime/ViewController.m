//
//  ViewController.m
//  LabelFont_Runtime
//
//  Created by 李鲁凤 on 16/3/8.
//  Copyright © 2016年 李鲁凤. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
{

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(10, 180 + 20, 300, 30)];
//    label1.font = [UIFont fontWithName:@"Copperplate-Bold" size:17];
    label1.text = @"我是initwithframe创建的label1";
    [self.view addSubview:label1];
    
    UILabel *label2 = [[UILabel alloc]init];
    label2.frame = CGRectMake(10, CGRectGetMaxY(label1.frame) + 20, 300, 30);
    label2.text = @"我是init创建的label2";
    [self.view addSubview:label2];
    
    UILabel *label3 = [[UILabel alloc]init];
    label3.frame = CGRectMake(10, CGRectGetMaxY(label2.frame) + 20, 300, 30);
    label3.font = [UIFont systemFontOfSize:17];
    label3.text = @"我是init创建的label3,我设置系统默认字体";
    [self.view addSubview:label3];

    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
