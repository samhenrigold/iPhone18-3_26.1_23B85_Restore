@interface JSFeatureFlagObject
- (BOOL)isEnabled:(id)enabled;
- (id)isEnabledBatch:(id)batch;
@end

@implementation JSFeatureFlagObject

- (BOOL)isEnabled:(id)enabled
{
  v4 = sub_10004494C();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_10001E840(v4, v6);

  return v4 & 1;
}

- (id)isEnabledBatch:(id)batch
{
  v4 = sub_100044A1C();
  selfCopy = self;
  sub_10001E8E4(v4);

  v6.super.isa = sub_100044A0C().super.isa;

  return v6.super.isa;
}

@end