@interface DataFrameRowFeatureProvider
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation DataFrameRowFeatureProvider

- (NSSet)featureNames
{

  sub_237D4BF28();

  v2 = sub_237EF8C50();

  return v2;
}

- (id)featureValueForName:(id)name
{
  v3 = sub_237EF8590();

  v4 = sub_237D4C1B0(v3);

  return v4;
}

@end