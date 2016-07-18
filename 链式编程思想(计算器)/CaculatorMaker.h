//
//  CaculatorMaker.h
//  链式编程思想(计算器)
//
//  Created by admin on 16/7/14.
//  Copyright © 2016年 刘怀轩. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculatorMaker : NSObject
@property (nonatomic , assign) int result;
// +

- (CaculatorMaker *(^)(int num))add;

// -

// *

// /

@end
