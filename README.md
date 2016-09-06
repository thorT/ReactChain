# ReactChain

### 一. 最终结果
<br>
>
***NSInteger result = calculator.add(5).reduce(3).multiply(20).divided(5).result;***
<br>

<br>

### 二. 实现过程
###### 1.定义这样一个这样的类
<pre>
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
</pre>

###### 2. 实现过程
<pre>
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
</pre>

###### 3. 使用
<pre>
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1. 实例
    Calculator *calculator = [[Calculator alloc] init];
    // 2. 链式响应
    Calculator *resultCalculator = calculator.add(5).reduce(3).multiply(20).divided(5);
    
    
    NSLog(@"result == %ld",resultCalculator.result);
    
}
</pre>

###### 原来是这么简单，就可以使用了
















