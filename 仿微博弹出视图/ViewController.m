//
//  ViewController.m
//  仿微博弹出视图
//
//  Created by 许明洋 on 2019/9/27.
//  Copyright © 2019 许明洋. All rights reserved.
//

#import "ViewController.h"
#import "Header.h"
#import "PopView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = HexColorInt32_t(f8f8f8);
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    button.center = self.view.center;
    [self.view addSubview:button];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}

- (void)click {
    
    NSMutableArray *imgs = @[].mutableCopy;
    for (NSInteger i = 0; i < 7; i ++) {
        [imgs addObject:[NSString stringWithFormat:@"publish_%zi",i]];
    }
    NSArray *titles = @[@"文字",@"图片",@"视频",@"语言",@"投票",@"签到",@"帮助"];
    [PopView showWithImages:imgs titles:titles selectBlock:^(NSInteger index) {
        NSLog(@"index:%zi",index);
    }];
}

@end
