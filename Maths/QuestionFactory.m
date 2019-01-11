//
//  QuestionFactory.m
//  Maths
//
//  Created by jason harrison on 2019-01-09.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory
- (instancetype)init
{
    self = [super init];
    if (self != nil) {
        [self generateRandomQuestion];
    }
    return self;
}


-(Question *)generateRandomQuestion{
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion",
                                       @"MultiplicationQuestion", @"DivisionQuestion"];
    
    int randomIndex = arc4random_uniform(3);
    
    NSString *className = [questionSubclassNames objectAtIndex:randomIndex];
    
    return [[NSClassFromString(className) alloc] init];
}

@end
