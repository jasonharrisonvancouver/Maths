//
//  main.m
//  Maths
//
//  Created by jason harrison on 2019-01-09.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import <string.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        
        while(YES == gameOn){
            
            
            
            AdditionQuestion *aq = [[AdditionQuestion alloc] init];
            
            
            NSLog(@"%@", [aq question]);
            
            
            InputHandler *ih = [[InputHandler alloc] init];
            NSString *userInput = [ih getInputString];
 
            int numberOfPreviousAttempts = [score numberOfAttempts];
            int newNumberOfAttempts = 1 + numberOfPreviousAttempts;
            score.numberOfAttempts=newNumberOfAttempts;
           
            if([userInput isEqualToString:@"quit"]){
                gameOn = NO;
                break;
            }else{
                int userAnswer = [userInput intValue];
                //NSLog(@"your guess is %d", userAnswer);
                if(userAnswer == [aq answer]){
                    NSLog(@"Right!");
                    
                    
                    int numberOfPreviousCorrect = [score numberOfCorrect];
                    int newNumberOfCorrect = 1 + numberOfPreviousCorrect;
                    score.numberOfCorrect=newNumberOfCorrect;
                    
                    
                }else{
                    NSLog(@"Wrong!");
                }
            }
            
            [score printScore];
        }
    }
    return 0;
}

