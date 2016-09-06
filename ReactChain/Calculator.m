//
//  Calculator.m
//  ReactChain
//
//  Created by thor on 16/9/6.
//  Copyright © 2016年 thor. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (instancetype)init{
    self = [super init];
    if (self) {
        self.result = 0;
    }
    return self;
}

// 加
- (Calculator *(^)(NSInteger))add{
    return ^id(NSInteger num){
        self.result += num;
        return self;
    };
}

// 减
- (Calculator *(^)(NSInteger))reduce{
    return ^id(NSInteger num){
        self.result -= num;
        return self;
    };
}

// 乘
- (Calculator *(^)(NSInteger))multiply{
    return ^id(NSInteger num){
        self.result *= num;
        return self;
    };
}

// 除
- (Calculator *(^)(NSInteger))divided{
    return ^id(NSInteger num){
        if (num == 0) {
            self.result = 0;
        }else{
        self.result /= num;
        }
        return self;
    };
}



@end





















