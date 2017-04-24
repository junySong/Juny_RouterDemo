//
//  ViewController.m
//  Juny_RouterDemo
//
//  Created by sy on 2017/4/24.
//  Copyright © 2017年 Juny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)toSettingBtnClick:(UIButton *)sender {
    
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
    
    //iOS9之后，隐私政策有了改变，需要用新的方法打开跳转应用的URL
    NSURL *url = [NSURL URLWithString:@"APPSkip://" ];
    if ([[UIDevice currentDevice].systemVersion floatValue]>=9.0) {
        
        [[UIApplication sharedApplication]openURL:url options:@{} completionHandler:^(BOOL success) {
            
        }];
    }else{
        if ([[UIApplication sharedApplication] canOpenURL:url]) {
            [[UIApplication sharedApplication] openURL:url];
        }
    }
   
    
  
}

- (IBAction)toFriend:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"APPSkip://RedVC" ];
    if ([[UIDevice currentDevice].systemVersion floatValue]>=10.0) {
        
        [[UIApplication sharedApplication]openURL:url options:@{} completionHandler:^(BOOL success) {
            if (success) {
                NSLog(@"success");
            }else{
                NSLog(@"failure");
            }
        }];
    }else{
        if ([[UIApplication sharedApplication] canOpenURL:url]) {
            [[UIApplication sharedApplication] openURL:url];
        }
    }
    
    
    

}

- (IBAction)toFriendCircle:(UIButton *)sender {
    
    NSURL *url = [NSURL URLWithString:@"APPSkip://BlueVC" ];
    if ([[UIDevice currentDevice].systemVersion floatValue]>=10.0) {
        
        [[UIApplication sharedApplication]openURL:url options:@{} completionHandler:^(BOOL success) {
            
        }];
    }else{
        if ([[UIApplication sharedApplication] canOpenURL:url]) {
            [[UIApplication sharedApplication] openURL:url];
        }
    }

}



@end
