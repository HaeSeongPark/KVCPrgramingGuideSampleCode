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
@property (nonatomic) int number;
@property (nonatomic) NSMutableDictionary *stuff;
@property (nonatomic) NSMutableArray<NSString*>* test;

-(NSUInteger) countOfTransactions;
-(id)objectInTransactionsAtIndex:(NSUInteger)index;
-(void)getTransactions:(Transaction **)buffer range:(NSRange)inRange;

-(void)insertObject:(NSString *)object inTestAtIndex:(NSUInteger)index;
-(void)removeObjectFromTestAtIndex:(NSUInteger)index;
-(void)replaceObjectInTestAtIndex:(NSUInteger)index withObject:(id)object;
-(BOOL)validateCurrentBalance:(id *)ioValue error:(out NSError * _Nullable __autoreleasing *)outError;
-(BOOL)validateNumber:(id*)ioValue error:(out NSError * _Nullable __autoreleasing *)outError;

@end

NS_ASSUME_NONNULL_END
