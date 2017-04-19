//
//  EmployeeDatabase.h
//  Week-6-Lab
//
//  Created by A Cahn on 4/18/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@interface EmployeeDatabase : NSObject

//makes singleton public, (.h public)
+(instancetype)shared;

-(NSInteger)count;

-(NSArray *)allEmployees;

-(Employee *)employeeAtIndex:(int)index;

-(void)add:(Employee *)employee;

-(void)remove:(Employee *)employee;

-(void)removeEmployeeAtIndex:(int)index;

-(void)removeAllEmployees;

@end
