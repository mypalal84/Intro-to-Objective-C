//
//  ViewController.m
//  Week-6-Lab
//
//  Created by A Cahn on 4/17/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import "ViewController.h"
#import "NSString+SelfStringArray.h"
#import "Person.h"
#import "Employee.h"
#import "EmployeeDatabase.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    Employee *original = [[Employee alloc]initWithFirstName:@"Alex" lastName:@"Cahn" age:@33 yearsEmployed:@1 andManager:@"Adam"];
//    
//    Employee *newEmployee = [original copy];
//    
//    newEmployee.firstName = @"Adam";
//    
//    NSLog(@"%@", original.firstName);
//    NSLog(@"%@", newEmployee.firstName);
    
//    [[EmployeeDatabase shared] count];//how to access singleton<-
    
    NSArray *array = @"Objective C is hard".returnStrArray;
    for (NSString *word in array) {
        NSLog(@"%@",word);
    }
    NSLog(@"%@",array);
    
    NSString *outputString;
    outputString = [NSString reversed:@"Work Please"];
    NSLog(@"%@", outputString);
    
    Person *alex = [[Person alloc] init];
    [alex setFirstName:@"Alex"];
    [alex setLastName:@"Cahn" ];
    [alex setAge:@33];
    [alex define];
    
    
    Employee *employeeOne = [[Employee alloc]initWithFirstName:@"Serg" lastName:@"Tsogtbaatar" age:@24 yearsEmployed:@0 managerName:@"Alex" andEmail:@"sergtsaeb@something.com"];
    
    Employee *adam = [[Employee alloc]init];
    [adam setEmployeeNumber:@3987094358275089];
    [adam setYearsEmployed:@2];
    [adam setManagerName:@"Brandy"];
    NSLog(@"%@", [adam managerName]);
    // Do any additional setup after loading the view, typically from a nib.
    [[EmployeeDatabase shared] add:employeeOne];
    [[EmployeeDatabase shared] add:adam];
}


@end
