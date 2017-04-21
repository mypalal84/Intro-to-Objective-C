//
//  Employee.m
//  Week-6-Lab
//
//  Created by A Cahn on 4/17/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import "Employee.h"

@implementation Employee

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                   yearsEmployed:(NSNumber *)yearsEmployed
                     managerName:(NSString *)managerName
                        andEmail:(NSString *)email{
    
    self = [super initWithFirstName:firstName lastName:lastName andAge:age];
    
    if(self){
        _yearsEmployed = yearsEmployed;
        _managerName = managerName;
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
        _email = email;
    }
    return self;
}

//initializing NSCoder
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    self = [super init];
    
    if(self){
        self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
        self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
        self.age = [aDecoder decodeObjectForKey:@"age"];
        self.yearsEmployed = [aDecoder decodeObjectForKey:@"yearsEmployed"];
        self.managerName = [aDecoder decodeObjectForKey:@"managerName"];
        self.employeeNumber = [aDecoder decodeObjectForKey:@"employeeNumber"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
    }
    
    return self;
}

//encoding the receiver
-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.firstName forKey:@"firstName"];
    [aCoder encodeObject:self.lastName forKey:@"lastName"];
    [aCoder encodeObject:self.age forKey:@"age"];
    [aCoder encodeObject:self.yearsEmployed forKey:@"yearsEmployed"];
    [aCoder encodeObject:self.managerName forKey:@"managerName"];
    [aCoder encodeObject:self.employeeNumber forKey:@"employeeNumber"];
    [aCoder encodeObject:self.email forKey:@"email"];
}

-(id)copyWithZone:(NSZone *)zone{
    
    Employee *employee = [super copyWithZone:zone];
    
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    employee.email = self.email;
    
    return employee;
}

//underlying instance variable
NSNumber *_employeeNumber;
NSNumber *_yearsEmployed;
NSString *_managerName;
NSString *_email;

//getter
//-(NSNumber *)employeeNumber{
//    NSNumber *employeeNumber = [[NSNumber numberWithInt:arc4random_uniform(1000)]autorelease];
//    return employeeNumber;
//}
//
//-(NSNumber *)yearsEmployed{
//    return _yearsEmployed;
//}
//
//-(NSString *)managerName{
//    return _managerName;
//}
//
//-(NSString *)email{
//    return _email;
//}

//setter
//-(void)setEmployeeNumber:(NSNumber *)employeeNumber{
//    _employeeNumber = employeeNumber;
//}
//
//-(void)setYearsEmployed:(NSNumber *)yearsEmployed{
//    _yearsEmployed = yearsEmployed;
//}
//
//-(void)setName:(NSString *)managerName{
//    _managerName = managerName;
//}
//
//-(void)setEmail:(NSString *)email{
//    _email = email;
//}

//setters and getters for mrc
-(void)setYearsEmployed:(NSNumber *)yearsEmployed{
    if(_yearsEmployed != yearsEmployed){
        [yearsEmployed retain];
        [_yearsEmployed release];
        _yearsEmployed = yearsEmployed;
    }
}
-(NSNumber *)descriptionYearsEmployed{
    NSNumber *descriptionYearsEmployed = [[NSNumber numberWithInt:self.yearsEmployed.intValue]autorelease];
    [descriptionYearsEmployed retain];
    return descriptionYearsEmployed;
}

-(void)setManagerName:(NSString *)managerName{
    if(_managerName != managerName){
        [managerName retain];
        [_managerName release];
        _managerName = managerName;
    }
}

-(NSString *)descriptionManagerName{
    NSString *descriptionManagerName = [[NSString stringWithFormat:@"%@", self.managerName]autorelease];
    [descriptionManagerName retain];
    return descriptionManagerName;
}

-(void)setEmail:(NSString *)email{
    if(_email != email){
        [email retain];
        [_email release];
        _email = email;
    }
}

-(NSString *)descriptionEmail{
    NSString *descriptionEmail = [[NSString stringWithFormat:@"%@", self.email]autorelease];
    [descriptionEmail retain];
    return descriptionEmail;
}



@end
