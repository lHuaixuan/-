//
//  CaculatorMaker.m
//  链式编程思想(计算器)
//
//  Created by admin on 16/7/14.
//  Copyright © 2016年 刘怀轩. All rights reserved.
//

#import "CaculatorMaker.h"

@implementation CaculatorMaker

- (instancetype)add:(int)num
{
    _result += num;
    return self;
}

- (CaculatorMaker * (^)(int num))add
{
    return ^(int num) {
        _result += num;
        return self;
    };
}

@end
