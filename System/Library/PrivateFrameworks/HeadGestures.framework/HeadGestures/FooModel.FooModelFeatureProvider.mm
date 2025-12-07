@interface FooModel.FooModelFeatureProvider
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
- (void)setFeatureNames:(id)names;
@end

@implementation FooModel.FooModelFeatureProvider

- (NSSet)featureNames
{

  v2 = sub_2511310F8();

  return v2;
}

- (void)setFeatureNames:(id)names
{
  *(self + 2) = sub_251131108();
}

- (id)featureValueForName:(id)name
{
  v3 = sub_251130F18();
  v5 = v4;

  v6 = sub_25110394C(v3, v5);

  return v6;
}

@end