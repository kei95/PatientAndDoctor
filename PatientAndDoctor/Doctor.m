//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Yamashtia Keisuke on 2019-08-08.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor {
    NSMutableArray<Patient* > *_patients;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _patients = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addPatient:(Patient*)patient{
    [_patients addObject:(patient)];
}


-(void)showPatientList{
    for(int i = 0; i < _patients.count - 1; i++){
        NSLog(@"%@", [_patients[i] getName]);
    }
}

@end
