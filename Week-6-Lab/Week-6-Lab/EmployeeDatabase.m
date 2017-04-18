//
//  EmployeeDatabase.m
//  Week-6-Lab
//
//  Created by A Cahn on 4/18/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import "EmployeeDatabase.h"

@interface EmployeeDatabase ()

@property(strong, nonatomic) NSArray *employees;

@end

@implementation EmployeeDatabase

//singleton
+(instancetype)shared{
    
    static EmployeeDatabase *shared = nil;//prevents retain cycle. Important!
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[[self class] alloc]init];
    });
    
    return shared;
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
