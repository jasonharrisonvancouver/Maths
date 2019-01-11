//
//  QuestionFactory.h
//  Maths
//
//  Created by jason harrison on 2019-01-09.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : Question

-(Question *)generateRandomQuestion;
    
@end

NS_ASSUME_NONNULL_END
