//
//  ViewController.m
//  链式编程思想(计算器)
//
//  Created by admin on 16/7/14.
//  Copyright © 2016年 刘怀轩. All rights reserved.
//

#import "ViewController.h"
#import "CaculatorMaker.h"
#import "NSObject+CaculatorMaker.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    CaculatorMaker *maker = [[CaculatorMaker alloc] init];
    //链式编程思想
//    int result = [maker.add(10).add(20) result];
//    
//    NSLog(@"%d" , result);
    
    // block:使代码高聚合
    int result = [NSObject makeCaculator:^(CaculatorMaker *maker) {
        
        // 把所有的计算代码都封装到这里
        
        maker.add(20).add(30);
        maker.add(20).add(30);
    }];
    NSLog(@"%d" , result);
}

// 之前开发中比较习惯,把事情封装到一个方法中
// 链式编程思想:把要做的事情封装到 block, 给外界提供一个返回这个 block 的方法
// 链式编程思想方法特点:方法返回值必须是 block,
// block参数:放需要操作的内容,
// block返回值:方法调用者

@end
