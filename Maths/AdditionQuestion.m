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
        /*
        NSString *questionPart1 = [NSString stringWithFormat:@"What is %ld", _operand1];
        NSString *questionPart2 = [NSString stringWithFormat:@" + %ld? ", _operand2];
        
        [questionPart1 stringByAppendingString: questionPart2];

         */
        
        
        NSString *part1 = @"What is ";
        NSString *part2 = [NSString stringWithFormat:@"%ld", _operand1];
        NSString *part3 = @" + ";
        NSString *part4 = [NSString stringWithFormat:@"%ld", _operand2];
        NSString *part5 = @"? ";
        
        _question = [NSString stringWithFormat:@"%@%@%@%@%@", part1, part2, part3, part4, part5];

        
        //NSLog(@"question is %@", _question);
        //NSLog(@"r1 is %ld and r2 is %ld and sum is %ld", _operand1 , _operand2, _answer);
    }
    return self;
}

@end
