//
//  Question.m
//  Maths
//
//  Created by jason harrison on 2019-01-09.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "Question.h"

@implementation Question

// overriding getter
- (NSInteger)answer{
    
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime{
    NSTimeInterval interval = round([_endTime timeIntervalSinceDate:_startTime]);
    
    return interval;
}


- (void)generateQuestion{
    // do nothing
}

@end
