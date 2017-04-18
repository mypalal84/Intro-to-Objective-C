//
//  NSString+SelfStringArray.m
//  Week-6-Lab
//
//  Created by A Cahn on 4/17/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import "NSString+SelfStringArray.h"

@implementation NSString (SelfStringArray)

-(NSArray *)returnStrArray{
    NSArray *resultArray = [self componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    return resultArray;
}

+(NSString *)reversed:(NSString *)input{
    NSString *first;
    NSString *output;
    output = [NSString stringWithFormat:@"%c", [input characterAtIndex:input.length -1]];
    for(int i = input.length -2; i >= 0; i--){
        first = [NSString stringWithFormat:@"%c", [input characterAtIndex:i]];
        output = [output stringByAppendingString:first];
    }
    return output;
}



@end


