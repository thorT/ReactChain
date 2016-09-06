//
//  Calculator.h
//  ReactChain
//
//  Created by thor on 16/9/6.
//  Copyright © 2016年 thor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

//1.这是一个返回值是Calculator类型的block,名字是add，参数是num
//2.声明为readonly是为了不让外界改变它
@property (nonatomic, copy, readonly) Calculator * (^add)(NSInteger num);

@property (nonatomic, copy, readonly) Calculator * (^reduce)(NSInteger num);
@property (nonatomic, copy, readonly) Calculator * (^multiply)(NSInteger num);
@property (nonatomic, copy, readonly) Calculator * (^divided)(NSInteger num);

/** 一个全局的值来保存值 */
@property (nonatomic, assign) NSInteger result;

@end
