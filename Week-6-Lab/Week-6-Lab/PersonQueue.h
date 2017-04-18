//
//  PersonQueue.h
//  Week-6-Lab
//
//  Created by A Cahn on 4/18/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonQueue <NSObject>

@required
-(void)enqueue:(Person);
-(Person)dequeue;


@optional
-(int)count;


@end
