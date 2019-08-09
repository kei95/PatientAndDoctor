//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Yamashtia Keisuke on 2019-08-08.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;
@interface Patient : NSObject
- (instancetype)initWithName:(NSString* )name andAge:(NSString* )age andPrescription:(BOOL)prescription;
-(void)visitDoctor:(Doctor*)doctor;
-(void)requestMedication;
-(void)setPrescription:(BOOL)prescription;
-(NSString*)getName;
@end

