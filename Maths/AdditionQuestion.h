//
//  AdditionQuestion.h
//  Maths
//
//  Created by jason harrison on 2019-01-09.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN



@interface AdditionQuestion : NSObject

@property NSString *question;

@property (nonatomic) NSInteger answer;
@property NSInteger operand1;
@property NSInteger operand2;

@property NSDate *startTime;
@property NSDate *endTime;


- (instancetype)init;

- (NSInteger)answer;

- (NSTimeInterval)answerTime;

@end

NS_ASSUME_NONNULL_END
