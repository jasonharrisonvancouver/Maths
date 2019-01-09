//
//  ScoreKeeper.h
//  Maths
//
//  Created by jason harrison on 2019-01-09.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property  int numberOfAttempts;
@property  int numberOfCorrect;

- (void)printScore;
@end

NS_ASSUME_NONNULL_END
