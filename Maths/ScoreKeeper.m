//
//  ScoreKeeper.m
//  Maths
//
//  Created by jason harrison on 2019-01-09.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void) printScore{
    
    int numberWrong = _numberOfAttempts - _numberOfCorrect;
    float percentage  = (float)(100.0 * (((float)_numberOfCorrect)/((float)_numberOfAttempts)));
    
    
    NSLog(@"score: %d right, %d wrong ---- %.1lf%%", _numberOfCorrect, numberWrong, percentage);
}

@end
