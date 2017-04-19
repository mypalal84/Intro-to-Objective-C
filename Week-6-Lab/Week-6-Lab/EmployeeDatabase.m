//
//  EmployeeDatabase.m
//  Week-6-Lab
//
//  Created by A Cahn on 4/18/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import "EmployeeDatabase.h"

@interface EmployeeDatabase ()

@property(strong, nonatomic) NSMutableArray *employees;

@end

@implementation EmployeeDatabase

//singleton
+(instancetype)shared{
    
    static EmployeeDatabase *shared = nil;//prevents retain cycle. Important!
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
    shared = [[EmployeeDatabase alloc]init];
    });
    
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _employees = [[NSMutableArray alloc]init];
    }
    return self;
}

-(NSInteger)count{

    return self.employees.count;
}

-(NSArray *)allEmployees{
    return self.employees;
}

-(Employee *)employeeAtIndex:(int)index{
    return [self.employees objectAtIndex:index];
}

-(void)add:(Employee *)employee{
    [self.employees addObject:employee];
}

-(void)remove:(Employee *)employee{
    [self.employees removeObject:employee];
}

-(void)removeEmployeeAtIndex:(int)index{
    [self.employees removeObjectAtIndex:index];
}

-(void)removeAllEmployees{
    [self.employees removeAllObjects];
}

//MARK: Helper Methods
-(NSURL *)documentsDirectory{
    
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    
    return documentsDirectoryURL;
}

-(NSURL *)archiveURL{
    
    return [[self documentsDirectory] URLByAppendingPathComponent:@"archive"];
    
}

@end
