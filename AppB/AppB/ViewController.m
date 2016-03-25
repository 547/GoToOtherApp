//
//  ViewController.m
//  AppB
//
//  Created by mac on 16/3/25.
//  Copyright © 2016年 Seven. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
}
//跳转到appA
- (IBAction)A:(id)sender {
    
    NSString *urlString=[NSString stringWithFormat:@"appA:"];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
}
//带值跳转到appA
- (IBAction)addValueGoToAppA:(id)sender {
    
    NSString *urlString=[NSString stringWithFormat:@"appA://%@",self.text.text];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
    
}

/**
 跳转到AppStore
 昨晚一网友(说是在无限互联学习的)问：在iOS应用中如何直接跳转到AppStore里面?其实这个问题很简单，首先拿到你要跳转到的AppStore地址(URL) 例如：https://itunes.apple.com/cn/app/jie-zou-da-shi/id493901993?mt=8
 　　然后将 http:// 替换为 itms:// 或者 itms-apps://
 　　然后调用以下代码
 　　[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"itms-apps://itunes.apple.com/cn/app/jie-zou-da-shi/id493901993?mt=8"]];
 　　整个过程就是上面这些，是不是非常简单?本来这么简单的问题不想在这里分享了的，但是前段时间公司有个很厉害的技术员问了一个很简单的问题，所以就想：再厉害的人也会有简单的问题找不到答案，所以就分享一下。(小小提醒一下，需要真机测试才能有结果)
 */
- (IBAction)goToAppStore:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"itms-apps://itunes.apple.com/cn/app/jie-zou-da-shi/id493901993?mt=8"]];
    
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
