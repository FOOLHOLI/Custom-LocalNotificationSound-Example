//
//  ViewController.m
//  CustomLocalNotificationSound
//
//  Created by 蘇健豪1 on 2014/10/19.
//  Copyright (c) 2014年 蘇健豪. All rights reserved.
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

- (IBAction)setLocalNotification:(id)sender {
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];
    localNotification.alertBody = @"Local Notification";
    localNotification.soundName = @"rain.caf";
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
}

@end
