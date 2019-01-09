//
//  main.m
//  Maths
//
//  Created by jason harrison on 2019-01-09.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import <string.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        
        while(YES == gameOn){
            
            
            char *input = malloc(256);
            
            
            
            
           /* char *input = malloc(256);
            printf("Type up to 255 characters: ");
            fgets(input, 255, stdin);
            
            NSString *result = [NSString stringWithCString:input
                                                  encoding:(NSUTF8StringEncoding)];
            
            [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"the string is %@", result);
            */
            AdditionQuestion *aq = [[AdditionQuestion alloc] init];
            
            
            
            NSLog(@"%@", [aq question]);
            
            
            
            fgets(input, 255, stdin);
            NSString *result = [NSString stringWithCString:input
                                                  encoding:(NSUTF8StringEncoding)];
            
            [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            //NSLog(@"You typed is %@", result);
            
            int userAnswer = [result intValue];
            
            if(strncmp(input, "quit", 4) == 0){
                //NSLog(@"you typed %@", result);
                gameOn = NO;
                continue;
                //break;
            }else{
                NSLog(@"your guess is %d", userAnswer);
                if(userAnswer == [aq answer]){
                    NSLog(@"Right!");
                }else{
                    NSLog(@"Wrong!");
                }
            }
            
        }
    }
    return 0;
}
