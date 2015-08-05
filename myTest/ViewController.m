//
//  ViewController.m
//  myTest
//
//  Created by liyongqiang on 15/7/29.
//  Copyright (c) 2015年 liyongqiang. All rights reserved.
//

#import "ViewController.h"
#import "Persion.h"
#import "Book.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"json" ofType:@"txt"];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:filePath] options:NSJSONReadingMutableContainers error:nil];
    Persion * myPersion = [[Persion alloc]initWithJsonDict:json];
    for (int i = 0 ; i < [myPersion.books count]; i ++) {
        Book * myBook = [myPersion.books objectAtIndex:i];
        NSLog(@"--------------%@",myBook.name);
    }
    NSLog(@"--------------%@",myPersion.myBook.name);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
