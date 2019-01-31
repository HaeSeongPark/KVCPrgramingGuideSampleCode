//
//  BankAccount.h
//  KVCPrgramingGuideSampleCode
//
//  Created by rhino Q on 30/01/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Transaction.h"

NS_ASSUME_NONNULL_BEGIN

@interface BankAccount : NSObject

@property (nonatomic) NSNumber* currentBalance; // An attribute
@property (nonatomic) Person* owner; // A to - one relation
@property (nonatomic) NSArray<Transaction*>* transactions; // A to-many relation

@end

NS_ASSUME_NONNULL_END
