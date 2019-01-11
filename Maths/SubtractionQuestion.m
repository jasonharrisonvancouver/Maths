//
//  SubtractionQuestion.m
//  Maths
//
//  Created by jason harrison on 2019-01-09.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion


- (instancetype)init{
    self = [super init];
    
    if(self != nil){
        [self generateQuestion ];
    }
    return self;
}

- (void)generateQuestion{
    self.operand1 = arc4random_uniform(100) + 1;
    self.operand2 = arc4random_uniform(100) + 1;
    
    self.answer = self.operand1 - self.operand2;
    
    NSString *part1 = @"What is ";
    NSString *part2 = [NSString stringWithFormat:@"%ld", self.operand1];
    NSString *part3 = @" - ";
    NSString *part4 = [NSString stringWithFormat:@"%ld", self.operand2];
    NSString *part5 = @"? ";
    
    self.question = [NSString stringWithFormat:@"%@%@%@%@%@", part1, part2, part3, part4, part5];
    
    self.startTime = [NSDate date];
}
@end
