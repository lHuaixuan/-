//
//  NSObject+CaculatorMaker.h
//  链式编程思想(计算器)
//
//  Created by admin on 16/7/15.
//  Copyright © 2016年 刘怀轩. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CaculatorMaker.h"

@interface NSObject (CaculatorMaker)

// 以后计算都是用这个方法,一调用这个方法就返回结果
+ (int)makeCaculator:(void (^)(CaculatorMaker *))block;

@end
