//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Yamashtia Keisuke on 2019-08-08.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject
-(void)addPatient:(Patient*)patient;
-(void)showPatientList;
@end
