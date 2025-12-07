@interface MLDTaskAssertion
- (MLDTaskAssertion)initWithName:(id)name pid:(int)pid bundleID:(id)d;
@end

@implementation MLDTaskAssertion

- (MLDTaskAssertion)initWithName:(id)name pid:(int)pid bundleID:(id)d
{
  v6.receiver = self;
  v6.super_class = MLDTaskAssertion;
  return [(MLDTaskAssertion *)&v6 initWithName:name pid:*&pid bundleID:d subsystem:@"com.apple.medialibraryd" reason:2 flags:3];
}

@end