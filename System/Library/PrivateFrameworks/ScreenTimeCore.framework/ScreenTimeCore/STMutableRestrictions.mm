@interface STMutableRestrictions
- (STMutableRestrictions)initWithIsEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (id)restrictionsImmutableCopy;
@end

@implementation STMutableRestrictions

- (STMutableRestrictions)initWithIsEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = STMutableRestrictions;
  return [(STRestrictions *)&v4 _initWithIsEnabled:enabled];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STMutableRestrictions alloc];

  return [(STRestrictions *)v4 _initWithCopyOf:self];
}

- (id)restrictionsImmutableCopy
{
  v2 = [[STRestrictions alloc] _initWithCopyOf:self];

  return v2;
}

@end