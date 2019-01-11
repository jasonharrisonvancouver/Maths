//
//  Question.h
//  Maths
//
//  Created by jason harrison on 2019-01-09.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject
@property (nonatomic, strong)NSString *question;

@property (nonatomic) NSInteger answer;
@property (nonatomic) NSInteger operand1;
@property (nonatomic) NSInteger operand2;

@property (nonatomic, strong)NSDate *startTime;
@property (nonatomic, strong)NSDate *endTime;

- (void)generateQuestion;


- (NSInteger)answer;

- (NSTimeInterval)answerTime;

@end

NS_ASSUME_NONNULL_END
