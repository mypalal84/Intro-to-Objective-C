//
//  Person.h
//  Week-6-Lab
//
//  Created by A Cahn on 4/17/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

//properties
@property(strong, nonatomic) NSString *firstName;
@property(strong, nonatomic) NSString *lastName;
@property(strong, nonatomic) NSNumber *age;

//methods
-(void)define;

@end
