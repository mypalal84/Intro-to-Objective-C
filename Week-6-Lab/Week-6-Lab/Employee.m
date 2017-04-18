//
//  Employee.m
//  Week-6-Lab
//
//  Created by A Cahn on 4/17/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import "Employee.h"

@implementation Employee

//underlying instance variable
NSNumber *_employeeNumber;
NSNumber *_yearsEmployed;
NSString *_managerName;

//getter
-(NSNumber *)employeeNumber{
    return _employeeNumber;
}
-(NSNumber *)yearsEmployed{
    return _yearsEmployed;
}
-(NSString *)managerName{
    return _managerName;
}

//setter
-(void)setEmployeeNumber:(NSNumber *)employeeNumber{
    _employeeNumber = employeeNumber;
}
-(void)setYearsEmployed:(NSNumber *)yearsEmployed{
    _yearsEmployed = yearsEmployed;
}
-(void)setName:(NSString *)managerName{
    _managerName = managerName;
}

@end
