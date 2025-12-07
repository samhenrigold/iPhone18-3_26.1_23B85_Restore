@interface FeatureProvider
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
- (void)setFeatureNames:(id)names;
@end

@implementation FeatureProvider

- (NSSet)featureNames
{
  swift_beginAccess();

  v2 = sub_275B7AF1C();

  return v2;
}

- (void)setFeatureNames:(id)names
{
  v4 = sub_275B7AF2C();
  swift_beginAccess();
  *(self + 13) = v4;
}

- (id)featureValueForName:(id)name
{
  v4 = sub_275B7AD0C();

  v5 = _s33iCloudSubscriptionOptimizerDaemon11FeatureNameO10fromStringyACSgSSFZ_0(v4);

  if (v5 == 55)
  {
    v6 = 0;
  }

  else
  {
    v7 = (*(*self + 400))(v5);

    v6 = *(v7 + 24);
  }

  return v6;
}

@end