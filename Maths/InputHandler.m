//
//  InputHandler.m
//  Maths
//
//  Created by jason harrison on 2019-01-09.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *) getInputString{
    char *input = malloc(256);
    
    fgets(input, 255, stdin);
    NSString *result = [NSString stringWithCString:input
                                          encoding:(NSUTF8StringEncoding)];
    
    result = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //NSLog(@"you typed %@", result);
    return result;
}

@end

