//
//  Person.h
//  Week-6-Lab
//
//  Created by A Cahn on 4/17/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>

//properties
//arc version
//@property(copy, nonatomic) NSString *firstName;
//@property(copy, nonatomic) NSString *lastName;
//@property(strong, nonatomic) NSNumber *age;

//mrc version retain
@property(retain, nonatomic) NSString *firstName;
@property(retain, nonatomic) NSString *lastName;
@property(retain, nonatomic) NSNumber *age;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                          andAge:(NSNumber *)age;

//methods
-(void)define;

@end
