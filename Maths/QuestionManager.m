//
//  QuestionManager.m
//  Maths
//
//  Created by jason harrison on 2019-01-09.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self != nil) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}


-(NSString *)timeOutput{
    double totalTimeSeconds  = 0;
    int numberOfQuestions = 0;
    double averageSecondsPerQuestion = 0;
    
    for (Question *addQuestion in _questions) {
        NSTimeInterval secondsToAnswer = [addQuestion answerTime];
        
        totalTimeSeconds = totalTimeSeconds + (double)secondsToAnswer ;
        numberOfQuestions++;
        
        
    }
    averageSecondsPerQuestion = totalTimeSeconds / numberOfQuestions;
    

    NSString *string = [[NSString alloc] initWithFormat:@"total time: %.2fs, average time: %.2fs", totalTimeSeconds, averageSecondsPerQuestion];
    
    
    return string;
    
    }


@end
