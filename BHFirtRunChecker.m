//
//  BHFirtRunChecker.m
//  First Run
//
//  Created by Mateusz Zając on 01.10.2013.
//  Copyright (c) 2013 Mateusz Zając. All rights reserved.
//

#import "BHFirtRunChecker.h"

@implementation BHFirtRunChecker

+ (void)executeBlockAtTheFirstRun:(void (^)())firstRunBlock atAnotherRun:(void (^)())anotherRunBlock
{
    // Checking whether HasAlreadyBeenLaunched key is set to be YES
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"HasAlreadyBeenLaunched"]) {
        // Running block given by the user when this isn't the first run of the app
        anotherRunBlock();
        
        // Uncomment this if you want the log
        //NSLog(@"Application has already been launched");
    } else {
        // Seeting the bool value for key HasAlreadyBeenLaunched and synchronising user defaults
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"HasAlreadyBeenLaunched"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        // Running the block with code provided by the user for the first run of the app
        firstRunBlock();
        
        // Uncommeent this f you want the log
        // NSLog(@"This is the first run");
    }
}

@end
