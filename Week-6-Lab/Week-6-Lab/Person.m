//
//  Person.m
//  Week-6-Lab
//
//  Created by A Cahn on 4/17/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import "Person.h"

@implementation Person

//methods
-(void)define{
NSString *first = [self firstName];
NSString *last = [self lastName];
NSNumber *yearsOld = [self age];
    NSLog(@"%@ %@ is %@ years old.", first, last, yearsOld);
}

@end
