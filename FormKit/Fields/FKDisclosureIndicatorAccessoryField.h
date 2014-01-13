//
//  FKDisclosureField.h
//  FormKitDemo
//
//  Created by cesar4 on 31/07/12.
//
//

#import <Foundation/Foundation.h>

#import "FKLabelField.h"
#import "FKFieldErrorProtocol.h"

@interface FKDisclosureIndicatorAccessoryField : FKLabelField <FKFieldErrorProtocol>

@property (nonatomic, strong) UILabel *errorLabel;

@end
