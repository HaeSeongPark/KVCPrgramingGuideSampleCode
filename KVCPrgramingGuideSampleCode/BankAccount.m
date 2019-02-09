//
//  BankAccount.m
//  KVCPrgramingGuideSampleCode
//
//  Created by rhino Q on 30/01/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "BankAccount.h"

@implementation BankAccount

- (NSString *)inverseForRelationshipKey:(NSString *)relationshipKey {
    return @"abc";
}
- (NSArray<NSString *> *)attributeKeys {
    return @[@"abc", @"bcd"];
}

- (NSUInteger)countOfTransactions {
    return [self.transactions count];
}

- (id)objectInTransactionsAtIndex:(NSUInteger)index {
    return [self.transactions objectAtIndex:index];
}

- (void)getTransactions:(Transaction *__unsafe_unretained *)buffer range:(NSRange)inRange {
    [self.transactions getObjects:buffer range:inRange];
}

-(void)insertObject:(NSString *)object inTestAtIndex:(NSUInteger)index {
    [self.test insertObject:object atIndex:index];
}

-(void)removeObjectFromTestAtIndex:(NSUInteger)index {
    [self.test removeObjectAtIndex:index];
}

-(void)replaceObjectInTestAtIndex:(NSUInteger)index withObject:(id)object {
    [self.test replaceObjectAtIndex:index withObject:object];
}

- (void)setNilValueForKey:(NSString *)key {
    if ( [key isEqualToString:@"number"]) {
        self.number = 0;
    } else {
        [super setNilValueForKey:key];
    }
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if ( _stuff == nil) {
        _stuff = [[NSMutableDictionary alloc] init];
    }
    
    // setValue:forKey: method allows us to pass in a nil value without requiring us to check for it in the code.
    // The NSDictionary setObject:forKey: will complain if you give it nil,
    // while setValue:forKey: with a nil value on dic will remove that key from the dic.
    [_stuff setValue:value forKey:key];
}

- (id)valueForUndefinedKey:(NSString *)key {
    id  value = [_stuff valueForKey:key];
    return value;
}
@end
