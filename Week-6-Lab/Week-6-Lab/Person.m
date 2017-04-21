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
    Person *person = [[[self class] alloc]init];//[self class] allows subclass to work as well(employee)
    person.firstName = self.firstName;
    person.lastName = self.lastName;
    person.age = self.age;
    
    return person;
}


//setters and getters for mrc
-(void)setFirstName:(NSString *)firstName{
    if(_firstName != firstName){
        [firstName retain];
        [_firstName release];
        _firstName = firstName;
    }
}

-(NSString *)descriptionFirstName{
    NSString *descriptionFirstName = [[NSString stringWithFormat:@"%@", self.firstName]autorelease];
    [descriptionFirstName retain];
    return descriptionFirstName;
}

-(void)setLastName:(NSString *)lastName{
    if(_lastName != lastName){
        [lastName retain];
        [_lastName release];
        _lastName = lastName;
    }
}

-(NSString *)descriptionLastName{
    NSString *descriptionLastName = [[NSString stringWithFormat:@"%@", self.lastName]autorelease];
    [descriptionLastName retain];
    return descriptionLastName;
}

-(void)setAge:(NSNumber *)age{
    if(_age != age){
        [age retain];
        [_age release];
        _age = age;
    }
}

-(NSNumber *)descriptionAge{
    NSNumber *descriptionAge = [[NSNumber numberWithInt:self.age.intValue]autorelease];
    [descriptionAge retain];
    return descriptionAge;
}

@end
