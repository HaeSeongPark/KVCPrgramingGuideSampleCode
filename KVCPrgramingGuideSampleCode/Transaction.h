//
//  Transaction.h
//  KVCPrgramingGuideSampleCode
//
//  Created by rhino Q on 30/01/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Transaction : NSObject

@property (nonatomic) NSString* payee; // To whom
@property (nonatomic) NSNumber* amount; // How much
@property (nonatomic) NSDate* date; // When

-(void) setPayee: (NSString *) thePayee andAmount: (NSNumber*) theAmount andDate: (NSDate *) theDate;

@end

NS_ASSUME_NONNULL_END
