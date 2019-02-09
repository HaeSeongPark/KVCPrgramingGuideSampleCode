//
//  main.m
//  KVCPrgramingGuideSampleCode
//
//  Created by rhino Q on 30/01/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BankAccount.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDateFormatter* formatter = [[NSDateFormatter alloc]init];
        formatter.dateFormat = @"yyyyMMdd";
        
        // MARK: - Sample Data1
        
        NSString *aPayee = @"Grren Power";
        NSNumber *aAmount = [NSNumber numberWithDouble:120.00];
        NSDate* aDate = [formatter dateFromString:@"20151201"];
        
        NSString *bPayee = @"Grren Power";
        NSNumber *bAmount = [NSNumber numberWithDouble:150.00];
        NSDate* bDate = [formatter dateFromString:@"20160101"];
        
        NSString *cPayee = @"Grren Power";
        NSNumber *cAmount = [NSNumber numberWithDouble:170.00];
        NSDate* cDate = [formatter dateFromString:@"20160201"];
        
        NSString *dPayee = @"Car Loan";
        NSNumber *dAmount = [NSNumber numberWithDouble:250.00];
        NSDate* dDate = [formatter dateFromString:@"20160115"];
        
        NSString *ePayee = @"Car Loan";
        NSNumber *eAmount = [NSNumber numberWithDouble:250.00];
        NSDate* eDate = [formatter dateFromString:@"20160215"];
        
        NSString *fPayee = @"Car Loan";
        NSNumber *fAmount = [NSNumber numberWithDouble:250.00];
        NSDate* fDate = [formatter dateFromString:@"20160315"];
        
        NSString *gPayee = @"General Cable";
        NSNumber *gAmount = [NSNumber numberWithDouble:120.00];
        NSDate* gDate = [formatter dateFromString:@"20151201"];
        
        NSString *hPayee = @"General Cable";
        NSNumber *hAmount = [NSNumber numberWithDouble:155.00];
        NSDate* hDate = [formatter dateFromString:@"20160101"];
        
        NSString *iPayee = @"General Cable";
        NSNumber *iAmount = [NSNumber numberWithDouble:120.00];
        NSDate* iDate = [formatter dateFromString:@"20151201"];
        
        NSString *jPayee = @"Mortgage";
        NSNumber *jAmount = [NSNumber numberWithDouble:1250.00];
        NSDate* jDate = [formatter dateFromString:@"20160115"];
        
        NSString *kPayee = @"Mortgage";
        NSNumber *kAmount = [NSNumber numberWithDouble:1250.00];
        NSDate* kDate = [formatter dateFromString:@"20160215"];
        
        NSString *lPayee = @"Mortgage";
        NSNumber *lAmount = [NSNumber numberWithDouble:1250.00];
        NSDate* lDate = [formatter dateFromString:@"20160315"];
        
        NSString *mPayee = @"Animal Hospital";
        NSNumber *mAmount = [NSNumber numberWithDouble:600.00];
        NSDate* mDate = [formatter dateFromString:@"20160715"];
        
        Transaction *aTransaction = [Transaction new];
        [aTransaction setPayee:aPayee andAmount:aAmount andDate:aDate];
        
        Transaction *bTransaction = [Transaction new];
        [bTransaction setPayee:bPayee andAmount:bAmount andDate:bDate];
        
        Transaction *cTransaction = [Transaction new];
        [cTransaction setPayee:cPayee andAmount:cAmount andDate:cDate];
        
        Transaction *dTransaction = [Transaction new];
        [dTransaction setPayee:dPayee andAmount:dAmount andDate:dDate];
        
        Transaction *eTransaction = [Transaction new];
        [eTransaction setPayee:ePayee andAmount:eAmount andDate:eDate];
        
        Transaction *fTransaction = [Transaction new];
        [fTransaction setPayee:fPayee andAmount:fAmount andDate:fDate];
        
        Transaction *gTransaction = [Transaction new];
        [gTransaction setPayee:gPayee andAmount:gAmount andDate:gDate];
        
        Transaction *hTransaction = [Transaction new];
        [hTransaction setPayee:hPayee andAmount:hAmount andDate:hDate];
        
        Transaction *iTransaction = [Transaction new];
        [iTransaction setPayee:iPayee andAmount:iAmount andDate:iDate];
        
        Transaction *jTransaction = [Transaction new];
        [jTransaction setPayee:jPayee andAmount:jAmount andDate:jDate];
        
        Transaction *kTransaction = [Transaction new];
        [kTransaction setPayee:kPayee andAmount:kAmount andDate:kDate];
        
        Transaction *lTransaction = [Transaction new];
        [lTransaction setPayee:lPayee andAmount:lAmount andDate:lDate];
        
        Transaction *mTransaction = [Transaction new];
        [mTransaction setPayee:mPayee andAmount:mAmount andDate:mDate];
        
        NSArray *transactions = @[aTransaction, bTransaction, cTransaction,
                                  dTransaction, eTransaction, fTransaction,
                                  gTransaction, hTransaction, iTransaction,
                                  jTransaction, kTransaction, lTransaction,
                                  mTransaction];
        

        // MARK: - Aggregation Operators
        NSLog(@"Aggregation Operatos");
        
        NSNumber *transactionAverage = [transactions valueForKeyPath:@"@avg.amount"];
        NSLog(@"%@", transactionAverage);
        
        NSNumber *numberOfTransactions = [transactions valueForKeyPath:@"@count"];
        NSLog(@"%@", numberOfTransactions);
        
        /*
         
         It is important to note that these comparisons are made by invoking the compare: method on the objects, so if you ever want to make your own class compatible with these operators, you must implement this method.

         */
        NSDate *latestDate = [transactions valueForKeyPath:@"@max.date"];
        NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:latestDate];
        NSLog(@"%ld %ld %ld", (long)[components year], (long)[components month], (long)[components day]);
        
        NSDate *earliestDate = [transactions valueForKeyPath:@"@min.date"];
        components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:earliestDate];
        NSLog(@"%ld %ld %ld", (long)[components year], (long)[components month], (long)[components day]);
        
        NSNumber *amountSum = [transactions valueForKeyPath:@"@sum.amount"];
        NSLog(@"%@", amountSum);
        
        // MARK: - Array Operators
        NSLog(@"Array Operators");
        
        NSArray *distinctPayees = [transactions valueForKeyPath:@"@distinctUnionOfObjects.payee"];
        NSLog(@"%@", distinctPayees);
        
        NSArray *payees = [transactions valueForKeyPath:@"@unionOfObjects.payee"];
        NSLog(@"%@", payees);
        
        // MARK: - Nesting Operators
        NSString *aMorePayee = @"General Cable - Cottage";
        NSNumber *aMoreAmount = [NSNumber numberWithDouble:120.00];
        NSDate *aMoreDate = [formatter dateFromString:@"20151218"];
        
        NSString *bMorePayee = @"General Cable - Cottage";
        NSNumber *bMoreAmount = [NSNumber numberWithDouble:155.00];
        NSDate *bMoreDate = [formatter dateFromString:@"20160109"];
        
        NSString *cMorePayee = @"General Cable - Cottage";
        NSNumber *cMoreAmount = [NSNumber numberWithDouble:120.00];
        NSDate *cMoreDate = [formatter dateFromString:@"20161201"];
        
        NSString *dMorePayee = @"Second Mortgage";
        NSNumber *dMoreAmount = [NSNumber numberWithDouble:1250.00];
        NSDate *dMoreDate = [formatter dateFromString:@"20161115"];
        
        NSString *eMorePayee = @"Second Mortgage";
        NSNumber *eMoreAmount = [NSNumber numberWithDouble:1250.00];
        NSDate *eMoreDate = [formatter dateFromString:@"20160920"];
        
        NSString *fMorePayee = @"Second Mortgage";
        NSNumber *fMoreAmount = [NSNumber numberWithDouble:1520.00];
        NSDate *fMoreDate = [formatter dateFromString:@"20160212"];
        
        NSString *gMorePayee = @"Hobby Shop";
        NSNumber *gMoreAmount = [NSNumber numberWithDouble:600.00];
        NSDate *gMoreDate = [formatter dateFromString:@"20160114"];
        
        Transaction *aMoreTransaction = [Transaction new];
        [aMoreTransaction setPayee:aMorePayee andAmount:aMoreAmount andDate:aMoreDate];
        
        Transaction *bMoreTransaction = [Transaction new];
        [bMoreTransaction setPayee:bMorePayee andAmount:bMoreAmount andDate:bMoreDate];
        
        Transaction *cMoreTransaction = [Transaction new];
        [cMoreTransaction setPayee:cMorePayee andAmount:cMoreAmount andDate:cMoreDate];
        
        Transaction *dMoreTransaction = [Transaction new];
        [dMoreTransaction setPayee:dMorePayee andAmount:dMoreAmount andDate:dMoreDate];
        
        Transaction *eMoreTransaction = [Transaction new];
        [eMoreTransaction setPayee:eMorePayee andAmount:eMoreAmount andDate:eMoreDate];
        
        Transaction *fMoreTransaction = [Transaction new];
        [fMoreTransaction setPayee:fMorePayee andAmount:fMoreAmount andDate:fMoreDate];
        
        Transaction *gMoreTransaction = [Transaction new];
        [gMoreTransaction setPayee:gMorePayee andAmount:gMoreAmount andDate:gMoreDate];
        
        NSArray *moreTransactions = @[aMoreTransaction, bMoreTransaction, cMoreTransaction,
                                  dMoreTransaction, eMoreTransaction, fMoreTransaction,
                                  gMoreTransaction];
        
        NSArray* arrayOfArrays = @[transactions, moreTransactions];
        
//        NSArray<NSArray<Transaction*>*> *arrayOfArraysT =
//        @[
//          @[ aTransaction,
//             bTransaction,
//             //...
//             ],
//
//          @[ aMoreTransaction,
//             bMoreTransaction,
//             //...
//             ]
//        ];
        
        
        NSLog(@"/// Nesting Operators");
        NSArray *collectedDistinctPayees = [arrayOfArrays valueForKeyPath:@"@distinctUnionOfArrays.payee"];
        NSLog(@"%@", collectedDistinctPayees);
        
        NSArray *collectedPayees = [arrayOfArrays valueForKeyPath:@"@unionOfArrays.payee"];
        NSLog(@"%@", collectedPayees);
        
        NSSet *firstSets = [[NSSet alloc] initWithArray:transactions];
        NSSet *secondSets = [[NSSet alloc] initWithArray:moreTransactions];
        NSSet *distincUnionOfSets = [NSSet  setWithObjects:firstSets, secondSets,firstSets, nil];
        NSLog(@"%@", [distincUnionOfSets valueForKeyPath:@"@distinctUnionOfSets.payee"]);
        
        
        // example using left key path
        BankAccount *bankAccount = [BankAccount new];
        bankAccount.transactions = @[aTransaction, bTransaction];
        
        NSLog(@"%@", [bankAccount valueForKeyPath:@"transactions.@count"]);
        NSLog(@"%@", [bankAccount valueForKeyPath:@"transactions.@avg.amount"]);
        NSLog(@"%@", [bankAccount valueForKeyPath:@"transactions.@distinctUnionOfObjects.payee"]);
        
        NSLog(@"%@", [bankAccount attributeKeys]);
        NSClassDescription * desc = (NSClassDescription *) [NSClassDescription classDescriptionForClass: [BankAccount class]];
        NSLog (@"%@", [[desc toManyRelationshipKeys] description]);
        
        NSLog(@"%@",[bankAccount inverseForRelationshipKey:@"currentBalance"]);
        
        NSLog(@"Aggregated Assault %@", [bankAccount valueForKeyPath:@"transactions.amount"]);
        
        
        NSArray *keys = [NSArray arrayWithObjects:@"payee", @"amount", @"date", nil];
        NSDictionary *gTransactionValue = [gTransaction dictionaryWithValuesForKeys:keys];
        NSLog(@"gTransaction values : %@", gTransactionValue);
        
        NSDictionary *newValues = [NSDictionary dictionaryWithObjectsAndKeys:
                                   @"new General Cable", @"payee",
                                   @(123),@"amount",
                                  nil];
        
        [gTransaction setValuesForKeysWithDictionary:newValues];
        gTransactionValue = [gTransaction dictionaryWithValuesForKeys:keys];
        NSLog(@"gTransaction values : %@", gTransactionValue);
        
        [bankAccount setValue:nil forKey:@"number"];
        NSLog(@"%d", bankAccount.number);
        
        [bankAccount setValue:@"test1" forUndefinedKey:@"test1"];
        [bankAccount setValue:[NSNull null] forUndefinedKey:@"test null object"];
        [bankAccount setValue:nil forUndefinedKey:@"test nil"];
        
        NSLog(@"test1 : %@, test null object : %@, test nil : %@",
              [bankAccount valueForKey:@"test1"],
              [bankAccount valueForKey:@"test null object"], // <null> is an [NSNUll null] object
              [bankAccount valueForKey:@"test nil"]); // (null) nil is real live value that we got back because "test nil" was not in dic
        
        // Notice that test nil key is not in stuff dic
        /*
         "test null object" = "<null>";
         test1 = test1;
         */
        
        NSLog(@"%@", bankAccount.stuff);
        
        
        // Accessing Collection Properties
        NSLog(@"Accessing Collection Properties");
        NSMutableArray *newTransactions = [bankAccount mutableArrayValueForKey:@"transactions"]; // NSKeyValueSlowMutableArray
        NSLog(@"%@", newTransactions);
        NSLog(@"class %@", NSStringFromClass([newTransactions class]));
        [newTransactions addObject:cTransaction];
        NSLog(@"%@", newTransactions);
        NSLog(@"%@", [bankAccount mutableArrayValueForKey:@"transactions"]);
        
        NSLog(@"%lu",(unsigned long)[bankAccount countOfTransactions]);
        NSLog(@"%@", [bankAccount objectInTransactionsAtIndex:0]);
        
        bankAccount.test = [NSMutableArray new];
        [bankAccount insertObject:@"1" inTestAtIndex:0];
        NSMutableArray* test = [bankAccount mutableArrayValueForKey:@"test"];
        NSLog(@"test : %@", test);
        [bankAccount replaceObjectInTestAtIndex:0 withObject:@(2)];
        NSLog(@"test : %@", test);
        [bankAccount removeObjectFromTestAtIndex:0];
        NSLog(@"test : %@", test);
        
        // Key-Value Coding Fundamentals - Validation Properties
        NSLog(@"Key-Value Coding Fundamentals - Validation Properties");
        NSLog(@"%@", bankAccount.currentBalance);
        NSNumber *num = [NSNumber numberWithInt:100];
        NSError *error;
        
//        NSNull *n = [NSNull nil];
        if ( [bankAccount validateCurrentBalance:nil error:&error]) {
            [bankAccount setValue:num forKey:@"currentBalance"];
        } else {
            NSLog(@"%@", error);
        }
        NSLog(@"%@", bankAccount.currentBalance);
        
        // for scalar property
        num = [NSNumber numberWithInt:-1];
        if ( [bankAccount validateNumber:&num error:&error]) {
            NSLog(@"scalar yes");
        } else {
            NSLog(@"scalar no");
        }
        
        
//        NSMutableArray<NSNumber *> *arrayz = [@[] mutableCopy];
//        [arrayz addObject:@1];
//        [arrayz addObject:@2];
//        [arrayz addObject:@"1"];
////        NSString *sdf = arrayz[0];
//
//        NSMutableDictionary<NSString *, NSNumber *> *someDictionary = [[NSMutableDictionary alloc] init];
//        [someDictionary setObject:@2 forKey:@"two"];
//        [someDictionary setObject:@1 forKey:@"one"];
//
//        NSMutableArray<NSNumber *> *array = [@[] mutableCopy];
//        [array addObject:@1];
//        [array addObject:@2];
//        [array addObject:@"5"];

    }
    return 0;
}
