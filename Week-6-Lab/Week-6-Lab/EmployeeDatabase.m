//
//  EmployeeDatabase.m
//  Week-6-Lab
//
//  Created by A Cahn on 4/18/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import "EmployeeDatabase.h"

@implementation EmployeeDatabase


//MARK: Helper Methods
-(NSURL *)documentsDirectory{
    
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    
    return documentsDirectoryURL;
}

-(NSURL *)archiveURL{
    
    return [[self documentsDirectory] URLByAppendingPathComponent:@"archive"];
    
}

@end
