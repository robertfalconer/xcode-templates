#import "___FILEBASENAMEASIDENTIFIER___InDatabase.h"

@implementation ___FILEBASENAMEASIDENTIFIER___InDatabase

+ (MSHDatabase *)defaultDatabase {
    return SKObjectModel.sharedInstance.primaryDatabase;
}

+ (NSUInteger)versionNumber {
    return 1;
}

+ (MSHSingleColumn *)primaryColumn {
    return MSHColumn(___FILEBASENAMEASIDENTIFIER___InDatabase, uuid);
}

- (Class<MSHMappedObject>)mappedObjectClass {
    return ___FILEBASENAMEASIDENTIFIER___.class;
}

+ (void)setUpColumns {
    [super setUpColumns];

    MSHColumn(___FILEBASENAMEASIDENTIFIER___InDatabase, uuid).defaultValueGenerator = ^id (void) {
        return [[NSUUID UUID] UUIDString];
    };
}

@end
