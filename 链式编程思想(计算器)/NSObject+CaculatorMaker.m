//
//  NSObject+CaculatorMaker.m
//  链式编程思想(计算器)
//
//  Created by admin on 16/7/15.
//  Copyright © 2016年 刘怀轩. All rights reserved.
//

#import "NSObject+CaculatorMaker.h"

@implementation NSObject (CaculatorMaker)

+ (int)makeCaculator:(void (^)(CaculatorMaker *))block
{
    // 创建制造者
    CaculatorMaker *maker = [[CaculatorMaker alloc] init];
    // 计算
    block(maker);
    return maker.result;
}

@end
