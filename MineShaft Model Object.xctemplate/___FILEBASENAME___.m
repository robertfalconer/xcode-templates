#import "___FILEBASENAME___.h"
#import "___FILEBASENAME___InDatabase.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - Object Lifecycle

- (instancetype)init {
    return [self initWithObjectInDatabase:[___FILEBASENAMEASIDENTIFIER___InDatabase new]];
}

- (instancetype)initWithObjectInDatabase:(___FILEBASENAMEASIDENTIFIER___InDatabase *)objectInDatabase {
    self = [super init];
    if (self) {
        _inDatabase = objectInDatabase;
    }
    return self;
}


#pragma mark - Public Interface

- (NSString *)uuid {
    return self.inDatabase.uuid;
}

@end
