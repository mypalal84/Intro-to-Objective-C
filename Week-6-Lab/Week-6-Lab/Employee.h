//
//  Employee.h
//  Week-6-Lab
//
//  Created by A Cahn on 4/17/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import "Person.h"

@interface Employee : Person <NSCopying, NSCoding>

//properties
//arc version
//@property(strong, nonatomic) NSNumber *employeeNumber;
//@property(strong, nonatomic) NSNumber *yearsEmployed;
//@property(copy, nonatomic) NSString *managerName;
//@property(copy, nonatomic) NSString *email;

//mrc version
@property(retain, nonatomic) NSNumber *employeeNumber;
@property(retain, nonatomic) NSNumber *yearsEmployed;
@property(retain, nonatomic) NSString *managerName;
@property(retain, nonatomic) NSString *email;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                   yearsEmployed:(NSNumber *)yearsEmployed
                     managerName:(NSString *)managerName
                        andEmail:(NSString *)email;

@end
