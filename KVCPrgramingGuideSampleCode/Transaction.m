//
//  Transaction.m
//  KVCPrgramingGuideSampleCode
//
//  Created by rhino Q on 30/01/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "Transaction.h"

@implementation Transaction

- (void)setPayee:(NSString *)thePayee andAmount:(NSNumber *)theAmount andDate:(NSDate *)theDate {
    self.payee = thePayee;
    self.amount = theAmount;
    self.date = theDate;
}


@end
