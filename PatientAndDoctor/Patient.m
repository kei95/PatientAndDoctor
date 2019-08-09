//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Yamashtia Keisuke on 2019-08-08.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient {
    NSString *_name;
    NSString *_age;
    BOOL _doesHaveHealthCard;
    BOOL _isprescriptionsAccepted;
}

- (instancetype)initWithName:(NSString* )name andAge:(NSString* )age andPrescription:(BOOL)prescription
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _doesHaveHealthCard = NO;
        _isprescriptionsAccepted = prescription;
    }
    return self;
}

-(void)visitDoctor:(Doctor* )doctor {
    if(!_doesHaveHealthCard){
        NSLog(@"This doctor cannot accept you");
        [doctor addPatient:(self)];
        _doesHaveHealthCard = YES;
    } else {
        [doctor addPatient:(self)];
        NSLog(@"You're accepted");
    }
}

-(NSString*)getName{
    return _name;
}

-(void)requestMedication {
    if(_isprescriptionsAccepted){
        NSLog(@"You got medicine");
    } else {
        NSLog(@"You don't have prescription");
    }
}

-(void)setPrescription:(BOOL)prescription{
    _isprescriptionsAccepted = prescription;
}

@end
