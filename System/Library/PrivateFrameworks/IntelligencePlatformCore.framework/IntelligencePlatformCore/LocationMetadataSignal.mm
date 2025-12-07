@interface LocationMetadataSignal
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation LocationMetadataSignal

- (NSSet)featureNames
{

  sub_1C49F9348();

  v2 = sub_1C4F01AA8();

  return v2;
}

- (id)featureValueForName:(id)name
{
  v3 = sub_1C4F01138();

  v4 = sub_1C49F9F0C(v3);

  return v4;
}

@end