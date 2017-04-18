//
//  Person.m
//  Week-6-Lab
//
//  Created by A Cahn on 4/17/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                          andAge:(NSNumber *)age{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
    }
    return self;
}

//methods
-(void)define{
NSString *first = [self firstName];
NSString *last = [self lastName];
NSNumber *yearsOld = [self age];
    NSLog(@"%@ %@ is %@ years old.", first, last, yearsOld);
}

//copy person
-(id)copyWithZone:(NSZone *)zone{
    Person *person = [[[self class] alloc]init];
    person.firstName = self.firstName;
    person.lastName = self.lastName;
    person.age = self.age;
    
    return person;
}

@end
