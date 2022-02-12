#import <UIKit/UIKit.h>

@interface SBApplication : NSObject
@property (nonatomic, readonly) NSString *bundleIdentifier;
@end

NSArray *bundleIDs = @[@"com.happysprites.boom", @"eu.markstam.boomclone"];

%hook SBApplication
-(BOOL)supportsApplicationType:(int)arg1 {
	return [bundleIDs containsObject:self.bundleIdentifier] ? YES : %orig;
}

-(BOOL)_supportsApplicationType:(int)arg1 {
	return [bundleIDs containsObject:self.bundleIdentifier] ? YES : %orig;
}

-(BOOL)isClassic {
	return [bundleIDs containsObject:self.bundleIdentifier] ? NO : %orig;
}
%end
