//
//  AdditionQuestion.m
//  Maths
//
//  Created by jason harrison on 2019-01-09.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "AdditionQuestion.h"
#import <stdlib.h>

@implementation AdditionQuestion

- (instancetype)init{
    self = [super init];
    
    if(self != nil){
        _operand1 = arc4random_uniform(100) + 1;
        _operand2 = arc4random_uniform(100) + 1;
        
        _answer = _operand1 + _operand2;
        
        
        NSString *part1 = @"What is ";
        NSString *part2 = [NSString stringWithFormat:@"%ld", _operand1];
        NSString *part3 = @" + ";
        NSString *part4 = [NSString stringWithFormat:@"%ld", _operand2];
        NSString *part5 = @"? ";
        
        _question = [NSString stringWithFormat:@"%@%@%@%@%@", part1, part2, part3, part4, part5];

        _startTime = [NSDate date];
    }
    return self;
}

// overriding getter
- (NSInteger)answer{
    
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime{
    NSTimeInterval interval = round([_endTime timeIntervalSinceDate:_startTime]);
                               
    return interval;
}

@end
