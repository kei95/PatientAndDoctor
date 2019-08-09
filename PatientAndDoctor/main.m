//
//  main.m
//  PatientAndDoctor
//
//  Created by Yamashtia Keisuke on 2019-08-08.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *p1 = [[Patient alloc] initWithName:@"Dude" andAge:@"20" andPrescription:NO];
        Doctor *d1 = [[Doctor alloc] init];
        
        [p1 visitDoctor:d1];
        [p1 visitDoctor:d1];
        [d1 showPatientList];

    }
    return 0;
}
