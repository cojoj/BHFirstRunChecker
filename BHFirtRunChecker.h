//
//  BHFirtRunChecker.h
//  First Run
//
//  Created by Mateusz Zając on 01.10.2013.
//  Copyright (c) 2013 Mateusz Zając. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BHFirtRunChecker : NSObject

// Class method which is executing blocks at the first run or at the another run.
+ (void)executeBlockAtTheFirstRun:(void (^)())firstRunBlock atAnotherRun:(void (^)())anotherRunBlock;

@end
